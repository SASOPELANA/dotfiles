local wezterm = require("wezterm")

-- Define la tabla de configuración
local config = {}

-- Configura la opacidad del fondo de la ventana
config.window_background_opacity = 0.82

-- Tamaño de la fuente
config.font_size = 9.5

-- Configura el esquema de colores
config.color_scheme = "One Dark (Gogh)"

-- Configura la fuente
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Bold", italic = true })

-- Configura el cursor
config.cursor_blink_rate = 700
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"

-- Configuración de la barra de estado
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = false
config.use_fancy_tab_bar = true
config.tab_max_width = 25
config.show_tab_index_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = true

-- Tamaño inicial de la terminal
config.initial_rows = 40
config.initial_cols = 140

-- Define el menú de lanzamiento
config.launch_menu = {
	{
		-- Comando para lanzar Kubuntu
		label = "Kubuntu",
		args = { "/bin/zsh" },
	},
}

-- Atajos para dividir pantalla
config.keys = {
	{
		key = "h",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "CTRL|ALT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
}

-- Devuelve la tabla de configuración
return config
