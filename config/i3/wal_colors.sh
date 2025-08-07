#!/bin/bash

# Archivo de salida para bordes
OUTFILE="$HOME/.config/i3/wal_borders.conf"

# Cargá los colores generados por wal
source "$HOME/.cache/wal/colors.sh"

cat >"$OUTFILE" <<EOF
client.focused          $color0 $color1 $color7 $color2
client.unfocused        $color8 $color8 $color7 $color8
client.focused_inactive $color0 $color8 $color7 $color8
client.urgent           $color1 $color1 $color7 $color1
EOF

# Recargá i3 para que tome la config nueva
i3-msg reload
