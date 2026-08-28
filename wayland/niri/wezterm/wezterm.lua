-- Importa la API de configuración de WezTerm.
-- Nos permite acceder a wezterm.font(), wezterm.action(), etc.
local wezterm = require("wezterm")

-- Crea una configuración de WezTerm usando el constructor recomendado.
-- Esto permite que WezTerm valide correctamente las opciones de configuración.
local config = wezterm.config_builder()

-- ============================================================
-- TEMA ELDRITCH
-- ============================================================

-- Importa nuestro tema Eldritch desde:
-- ~/.config/wezterm/themes/Eldritch.lua
local eldritch = require("themes.Eldritch")

-- Aplica los colores definidos dentro del tema.
config.colors = eldritch.colors

-- ============================================================
-- VENTANA
-- ============================================================

-- Hace que el fondo de WezTerm sea 90% opaco.
-- 1.0 = completamente opaco
-- 0.0 = completamente transparente
config.window_background_opacity = 0.9

-- ============================================================
-- FUENTE
-- ============================================================

-- Define el tamaño de la fuente en puntos.
config.font_size = 11

-- Usa JetBrainsMono Nerd Font.
-- DemiBold hace que la fuente tenga un poco más de peso.
-- italic = true hace que WezTerm use la variante cursiva.
config.font = wezterm.font("JetBrainsMono Nerd Font", {
	weight = "DemiBold",
	italic = true,
})

-- ============================================================
-- CURSOR
-- ============================================================

-- Tiempo de parpadeo del cursor en milisegundos.
-- 700 = 0.7 segundos.
config.cursor_blink_rate = 700

-- Cursor en forma de bloque que parpadea.
config.default_cursor_style = "BlinkingBlock"

-- Animación lineal al aparecer el cursor.
config.cursor_blink_ease_in = "Linear"

-- Animación lineal al desaparecer el cursor.
config.cursor_blink_ease_out = "Linear"

-- ============================================================
-- BARRA DE PESTAÑAS
-- ============================================================

-- Activa la barra de pestañas de WezTerm.
config.enable_tab_bar = true

-- Si solamente existe una pestaña, oculta la barra.
-- Esto deja más espacio vertical para la terminal.
config.hide_tab_bar_if_only_one_tab = true

-- Utiliza la barra de pestañas con el estilo moderno/fancy.
config.use_fancy_tab_bar = true

-- Limita el ancho máximo de cada pestaña.
config.tab_max_width = 25

-- Muestra el número de la pestaña.
config.show_tab_index_in_tab_bar = true

-- Cuando cierras una pestaña, vuelve a la última pestaña activa.
config.switch_to_last_active_tab_when_closing_tab = true

-- ============================================================
-- TAMAÑO INICIAL
-- ============================================================

-- Define 104 columnas como tamaño inicial de WezTerm.
--
-- IMPORTANTE:
-- Esto NO significa 104 píxeles ni 104% de la pantalla.
-- Son 104 celdas/caracteres de terminal.
--
-- En tu PC lo estás utilizando como un tamaño inicial que
-- funciona bien con tu configuración de niri.
config.initial_cols = 104

-- No fijamos initial_rows.
-- Dejamos que el entorno/compositor determine la altura.
-- Esto ayuda a que niri pueda gestionar verticalmente la ventana.

-- ============================================================
-- WAYLAND
-- ============================================================

-- Fuerza explícitamente el backend Wayland.
--
-- Tu sesión es niri (Wayland), así que tiene sentido dejarlo
-- explícito aunque las versiones actuales de WezTerm ya pueden
-- utilizar Wayland automáticamente.
config.enable_wayland = true

-- ============================================================
-- MENÚ DE LANZAMIENTO
-- ============================================================

-- Define comandos adicionales que aparecen en el launcher
-- de WezTerm.
config.launch_menu = {

	-- Primera entrada del launcher.
	{
		-- Nombre que aparecerá en el menú.
		label = "Debian Trixie",

		-- Shell que se ejecutará al seleccionar esta entrada.
		args = { "/bin/zsh" },
	},
}

-- ============================================================
-- ATAJOS
-- ============================================================

-- Define los atajos personalizados de WezTerm.
config.keys = {

	-- CTRL + ALT + H
	{
		key = "h",
		mods = "CTRL|ALT",

		-- Divide el panel verticalmente.
		-- La división pertenece al dominio/panel actual.
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},

	-- CTRL + ALT + V
	{
		key = "v",
		mods = "CTRL|ALT",

		-- Divide el panel horizontalmente.
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},
}

-- Devuelve toda la configuración a WezTerm.
return config
