local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Tema Eldritch
local eldritch = require("themes.Eldritch")
config.colors = eldritch.colors

-- Transparencia de la ventana
config.window_background_opacity = 0.9

-- Fuente y tamaño
config.font_size = 11
config.font = wezterm.font("JetBrainsMono Nerd Font", {
	weight = "DemiBold",
	italic = true,
})

-- Cursor en bloque con parpadeo
config.cursor_blink_rate = 700
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"

-- Barra de pestañas
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = true
config.tab_max_width = 25
config.show_tab_index_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = true
config.tab_bar_at_bottom = true

-- Colores de la barra de pestañas
config.colors.tab_bar = {
	active_tab = {
		bg_color = "#37f499",
		fg_color = "#212337",
	},

	inactive_tab = {
		bg_color = "#323449",
		fg_color = "#04d1f9",
	},
}

-- Estilo del marco de la ventana
config.window_frame = {
	font = wezterm.font("JetBrainsMono Nerd Font", {
		weight = "Bold",
	}),

	font_size = 9,
	active_titlebar_bg = "none",
	inactive_titlebar_bg = "none",
}

-- Muestra el nombre del programa en cada pestaña
wezterm.on("format-tab-title", function(tab)
	return {
		{ Text = "  " .. "  " .. tab.active_pane.title .. "   " },
	}
end)

-- Tamaño inicial en columnas
config.initial_cols = 104

-- Fuerza el backend Wayland
config.enable_wayland = true

-- Entrada disponible en el launcher
config.launch_menu = {
	{
		label = "Debian Trixie",
		args = { "/bin/zsh" },
	},
}

-- Atajos personalizados
config.keys = {

	-- Ctrl + Alt + H: dividir verticalmente
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},

	-- Ctrl + Alt + V: dividir horizontalmente
	{
		key = "v",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},

	-- Ctrl + Shift + ←: pestaña anterior
	{
		key = "LeftArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(-1),
	},

	-- Ctrl + Shift + →: pestaña siguiente
	{
		key = "RightArrow",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivateTabRelative(1),
	},
}

return config
