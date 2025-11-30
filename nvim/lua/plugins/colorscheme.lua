return {
  -- Tema Tokyo Night
  {
    "folke/tokyonight.nvim",
    lazy = true, -- <- solo se carga si lo pedís
    priority = 1000, -- Asegurarse de que el tema se carga primero
    config = function()
      require("tokyonight").setup({
        style = "night", -- Opciones: "storm", "moon", "night", "day"
        transparent = false,
      })
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },

  -- Tema Catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- Opciones: "latte", "frappe", "macchiato", "mocha"
        transparent_background = false,
      })
    end,
  },

  -- Tema Dracula
  {
    "Mofiqul/dracula.nvim",
    lazy = true, -- Solo cargar cuando sea necesario
    priority = 1000,
    config = function()
      require("dracula").setup({
        transparent_bg = true,
      })
      -- vim.cmd([[colorscheme dracula]])
    end,
  },

  -- Andormeda
  {
    "safv12/andromeda.vim",
    lazy = true,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("andromeda") -- habilitar por defecto
    end,
  },

  -- aura theme
  {
    "baliestri/aura-theme",
    lazy = true,
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
    lazy = true,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa") -- habilitar por defecto
    end,
  },

  -- Monakai Pro
  {
    "loctvl842/monokai-pro.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("monokai-pro") -- habilitar por defecto
    end,
  },

  -- Nigh Fox Theme
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("nightfox") -- habilitar por defecto
    end,
  },

  -- OneDark theme
  {
    "navarasu/onedark.nvim",
    lazy = false,
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
      -- vim.cmd.colorscheme("solarized-osaka")
    end,
  },

  -- GitHub Themes
  {
    "projekt0n/github-nvim-theme",
    name = "github-theme",
    lazy = true, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require("github-theme").setup({
        -- ...
      })

      -- vim.cmd("colorscheme github_dark")
    end,
  },
}
