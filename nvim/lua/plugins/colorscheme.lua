return {
  -- Tema Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = false, -- <- solo se carga si lo pedís
    priority = 1000, -- Asegurarse de que el tema se carga primero
    config = function()
      require("tokyonight").setup({
        style = "night", -- Opciones: "storm", "moon", "night", "day"
        transparent = true,
      })
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- Tema Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Opciones: "latte", "frappe", "macchiato", "mocha"
        transparent_background = true,
      })
    end,
  },

  -- Tema Dracula
  {
    "Mofiqul/dracula.nvim",
    lazy = false, -- Solo cargar cuando sea necesario
    priority = 1000,
    config = function()
      require("dracula").setup({
        transparent_bg = false,
      })
      --vim.cmd([[colorscheme dracula]])
    end,
  },

  -- Andormeda
  {
    "nobbmaestro/nvim-andromeda",
    dependencies = { "tjdevries/colorbuddy.nvim" },
    priority = 1000,
    lazy = true,
    config = function()
      require("andromeda").setup({
        preset = "andromeda",
      })
      --vim.cmd([[colorscheme andromeda]])
    end,
  },

  -- aura theme
  {
    "baliestri/aura-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin)
      vim.opt.rtp:append(plugin.dir .. "/packages/neovim")
      -- vim.cmd([[colorscheme aura-dark]])
    end,
  },

  -- Ciber Dream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("cyberdream") -- habilitar por defecto
    end,
  },

  -- Kaganagawa Themes
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("kanagawa") -- habilitar por defecto
    end,
  },

  -- Monakai Pro
  {
    "loctvl842/monokai-pro.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("monokai-pro").setup({
        transparent_background = true,
        terminal_colors = true,
        devicons = true,
        styles = {
          comment = { italic = true },
          keyword = { italic = true },
          type = { italic = true },
          storageclass = { italic = true },
          structure = { italic = true },
          parameter = { italic = true },
          annotation = { italic = true },
          tag_attribute = { italic = true },
        },
        filter = "classic", -- classic | octagon | pro | machine | ristretto | spectrum
        day_night = {
          enable = false,
          day_filter = "pro",
          night_filter = "spectrum",
        },
        inc_search = "background", -- underline | background
        background_clear = {
          "toggleterm",
          "telescope",
          "renamer",
          "notify",
        },
        plugins = {
          bufferline = {
            underline_selected = false,
            underline_visible = false,
            underline_fill = false,
            bold = true,
          },
          indent_blankline = {
            context_highlight = "default", -- default | pro
            context_start_underline = false,
          },
        },
        override = function(scheme)
          return {}
        end,
        override_palette = function(filter)
          return {}
        end,
        override_scheme = function(scheme, palette, colors)
          return {}
        end,
      })
      vim.cmd.colorscheme("monokai-pro-classic") -- habilitar por defecto
    end,
  },

  -- Nigh Fox Theme
  {
    "EdenEast/nightfox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("nightfox") -- habilitar por defecto
    end,
  },

  -- OneDark theme
  {
    "navarasu/onedark.nvim",
    lazy = true,
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("onedark").setup({
        style = "deep",
      })
      -- Enable theme
      require("onedark").load()
    end,
  },

  -- Solorize Osaka
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      require("solarized-osaka").setup({
        transparent = true, -- ✅ Fondo transparente activado
        terminal_colors = true,
        styles = {
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          sidebars = "dark", -- Los paneles laterales mantienen fondo oscuro
          floats = "dark", -- Las ventanas flotantes mantienen fondo oscuro
        },
        sidebars = { "qf", "help" },
        day_brightness = 0.3,
        hide_inactive_statusline = false,
        dim_inactive = false,
        lualine_bold = false,
      })

      --vim.cmd.colorscheme("solarized-osaka")
    end,
  },

  -- GitHub Themes
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ...
      })

      -- vim.cmd("colorscheme github_dark")
    end,
  },
}
