return {
  {
    "nvim-mini/mini.icons",
    lazy = true,
    opts = {
      -- Configuración principal de iconos
      default = {
        -- Ejemplo: puedes sobreescribir el icono por defecto para archivos
        file = { glyph = "󰈙" },
      },
      -- AQUÍ: Personalizar iconos por EXTENSIÓN (no por 'filetype')
      extension = {
        mdx = { glyph = " ", hl = "MiniIconsMdx" },
        css = { glyph = " ", hl = "MiniIconsCss" },
        md = { glyph = " ", hl = "MiniIconsGrey" },
        ts = { glyph = "󰛦 ", hl = "MiniIconsTs" },
        env = { glyph = " ", hl = "MiniIconsYellow" },
        http = { glyph = "󰖟 ", hl = "MiniIconsRed" },
        sh = { glyph = "󰆍 ", hl = "MiniIconsSh" },
        ejs = { glyph = " ", hl = "MiniIconsOrange" },
      },
      -- Puedes seguir configurando otras categorías si lo necesitas:
      filetype = {
        -- Aquí irían personalizaciones para tipos como 'lua', 'python', etc.
      },
      file = {
        [".keep"] = { glyph = "󰊢 ", hl = "MiniIconsOrange" },
        ["devcontainer.json"] = { glyph = "", hl = "MiniIconsAzure" },
        [".env"] = { glyph = " ", hl = "MiniIconsYellow" },
      },
      directory = {
        ["controllers"] = { glyph = "󱁿 ", hl = "MiniIconsYellow" },
        ["controller"] = { glyph = "󱁿 ", hl = "MiniIconsYellow" },
        ["middleware"] = { glyph = "󱧼 ", hl = "MiniIconsMiddleware" },
        ["middlewares"] = { glyph = "󱧼 ", hl = "MiniIconsMiddleware" },
        ["routes"] = { glyph = "󱧬 ", hl = "MiniIconsGreen" },
        ["route"] = { glyph = "󱧬 ", hl = "MiniIconsGreen" },
        ["private"] = { glyph = "󰉐 ", hl = "MiniIconsRed" },
        ["privates"] = { glyph = "󰉐 ", hl = "MiniIconsRed" },
        ["models"] = { glyph = "󱋣 ", hl = "MiniIconsSh" },
        ["model"] = { glyph = "󱋣 ", hl = "MiniIconsSh" },
        ["types"] = { glyph = "󱧶 ", hl = "MiniIconsTs" },
        ["type"] = { glyph = "󱧶 ", hl = "MiniIconsTs" },
        ["validators"] = { glyph = "󱥾 ", hl = "MiniIconsRed" },
        ["validator"] = { glyph = "󱥾 ", hl = "MiniIconsRed" },
        ["components"] = { glyph = "󰉎 ", hl = "MiniIconsComponent" },
        ["component"] = { glyph = "󰉎 ", hl = "MiniIconsComponent" },
        ["pages"] = { glyph = "󰾷 ", hl = "MiniIconsOrange" },
        ["page"] = { glyph = "󰾷 ", hl = "MiniIconsOrange" },
        ["views"] = { glyph = "󰾷 ", hl = "MiniIconsOrange" },
        ["view"] = { glyph = "󰾷 ", hl = "MiniIconsOrange" },
        ["styles"] = { glyph = "󱃪 ", hl = "MiniIconsCss" },
        ["style"] = { glyph = "󱃪 ", hl = "MiniIconsCss" },
        ["apis"] = { glyph = "󰴉 ", hl = "MiniIconsApi" },
        ["api"] = { glyph = "󰴉 ", hl = "MiniIconsApi" },
        ["contexts"] = { glyph = " ", hl = "MiniIconsContext" },
        ["context"] = { glyph = " ", hl = "MiniIconsContext" },
        ["assets"] = { glyph = "󰲂 ", hl = "MiniIconsYellow" },
        ["asset"] = { glyph = "󰲂 ", hl = "MiniIconsYellow" },
        ["layouts"] = { glyph = " ", hl = "MiniIconsCyan" },
        ["layout"] = { glyph = " ", hl = "MiniIconsCyan" },
        ["config"] = { glyph = "󱁿 ", hl = "MiniIconsConfig" },
        ["icons"] = { glyph = "󰉏 ", hl = "MiniIconsIcon" },
        ["icon"] = { glyph = "󰉏 ", hl = "MiniIconsIcon" },
        ["images"] = { glyph = "󰉏 ", hl = "MiniIconsIcon" },
        ["image"] = { glyph = "󰉏 ", hl = "MiniIconsIcon" },
        ["fonts"] = { glyph = "󰀺 ", hl = "MiniIconsFont" },
        ["font"] = { glyph = "󰀺 ", hl = "MiniIconsFont" },
        ["services"] = { glyph = " ", hl = "MiniIconsYellow" },
        ["service"] = { glyph = " ", hl = "MiniIconsYellow" },
        ["utils"] = { glyph = "󰉗 ", hl = "MiniIconsUtil" },
        ["util"] = { glyph = "󰉗 ", hl = "MiniIconsUtil" },
        ["hooks"] = { glyph = "󰛢 ", hl = "MiniIconsHook" },
        ["hook"] = { glyph = "󰛢 ", hl = "MiniIconsHook" },
        ["repositories"] = { glyph = "󰉍 ", hl = "MiniIconsRepo" },
        ["repository"] = { glyph = "󰉍 ", hl = "MiniIconsRepo" },
        ["repos"] = { glyph = "󰉍 ", hl = "MiniIconsRepo" },
        ["repo"] = { glyph = "󰉍 ", hl = "MiniIconsRepo" },
        ["filters"] = { glyph = "󰥨 ", hl = "MiniIconsHook" },
        ["filter"] = { glyph = "󰥨 ", hl = "MiniIconsHook" },
        ["db"] = { glyph = "󱋣  ", hl = "MiniIconsYellow" },
        ["events"] = { glyph = "󱂷 ", hl = "MiniIconsYellow" },
        ["event"] = { glyph = "󱂷 ", hl = "MiniIconsYellow" },
        ["themes"] = { glyph = "󱃪 ", hl = "MiniIconsCyan" },
        ["theme"] = { glyph = "󱃪 ", hl = "MiniIconsCyan" },
        ["i18n"] = { glyph = "󰀺  ", hl = "MiniIconsI18n" },
        ["scripts"] = { glyph = "󱧶 ", hl = "MiniIconsScript" },
        ["script"] = { glyph = "󱧶 ", hl = "MiniIconsScript" },
        ["public"] = { glyph = "󱁽 ", hl = "MiniIconsPublic" },
        ["contents"] = { glyph = "󰲂 ", hl = "MiniIconsPublic" },
        ["content"] = { glyph = "󰲂 ", hl = "MiniIconsPublic" },
        ["data"] = { glyph = "󱋣  ", hl = "MiniIconsYellow" },
        ["ui"] = { glyph = "󰚝 ", hl = "MiniIconsPurple" },
        ["common"] = { glyph = "󰝉 ", hl = "MiniIconsPurple" },
        ["decorators"] = { glyph = "󰉗 ", hl = "MiniIconsPurple" },
        ["decorator"] = { glyph = "󰉗 ", hl = "MiniIconsPurple" },
        ["interfaces"] = { glyph = "󰲂 ", hl = "MiniIconsTs" },
        ["interface"] = { glyph = "󰲂 ", hl = "MiniIconsTs" },
        ["enums"] = { glyph = "󰲂 ", hl = "MiniIconsEnum" },
        ["enum"] = { glyph = "󰲂 ", hl = "MiniIconsEnum" },
        ["constants"] = { glyph = " ", hl = "MiniIconsGrey" },
        ["constant"] = { glyph = " ", hl = "MiniIconsGrey" },
        ["guards"] = { glyph = "󰉑 ", hl = "MiniIconsGreen" },
        ["guard"] = { glyph = "󰉑 ", hl = "MiniIconsGreen" },
      },

      -- Configuración opcional: función para controlar extensiones
      use_file_extension = function(ext, file)
        -- Ejemplo: ignorar extensión 'log' para usar detección de filetype
        if ext == "log" then
          return false
        end
        return true
      end,
    },
    init = function()
      -- MAGIA: Hace que 'mini.icons' controle las llamadas a 'nvim-web-devicons'
      package.preload["nvim-web-devicons"] = function()
        require("mini.icons").mock_nvim_web_devicons()
        return package.loaded["nvim-web-devicons"]
      end
    end,
    config = function(_, opts)
      require("mini.icons").setup(opts)
    end,
  },
}
