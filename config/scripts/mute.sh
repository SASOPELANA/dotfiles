#!/usr/bin/env bash

# Función para mostrar notificaciones de volumen
notify_volume() {
	local icon="$1"
	local message="$2"
	VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')
	notify-send -u low -t 800 "$icon $message ($VOLUME%)"
}

case "$1" in
up)
	wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
	notify_volume "🔊" "Volumen subido"
	;;
down)
	wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
	notify_volume "🔉" "Volumen bajado"
	;;
mute)
	IS_MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q "MUTED" && echo "yes" || echo "no")
	if [ "$IS_MUTED" = "yes" ]; then
		wpctl set-mute @DEFAULT_AUDIO_SINK@ 0
		notify_volume "🔊" "Sonido activado"
	else
		wpctl set-mute @DEFAULT_AUDIO_SINK@ 1
		notify-send -u low -t 800 "🔇 Sonido silenciado"
	fi
	;;
*)
	echo "Uso: $0 {up|down|mute}"
	exit 1
	;;
esac
