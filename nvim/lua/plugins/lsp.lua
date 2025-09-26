return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "nvimtools/none-ls.nvim",
    {
      "mason-org/mason.nvim",
      opts = {
        ui = {
          border = "rounded",
        },
      },
    },
    "folke/neodev.nvim",
    "mason-org/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  event = "VeryLazy",
  main = "alpha.lsp",
  opts = {
    mason = {
      enable = true,
      auto_install = true,
    },
    servers = {
      pyright = { enable = true }, -- Habilitar pyright para Python
      tsserver = { enable = true }, -- Habilitar tsserver para TypeScript/JavaScript
      omnisharp = { enable = true }, -- Habilitar omnisharp para C#
      clangd = { enable = true }, -- Habilitar clangd para C++
      cssls = { enable = true }, -- Habilitar cssls para CSS
      html = { enable = true }, -- Habilitar html para HTML.
      lua_ls = { enable = true }, -- Habilitar lua_ls para Lua
      rust_analyzer = { enable = true }, -- Habilitar rust_analyzer para Rust
      gopls = { enable = true }, -- Habilitar gopls para Go
      sqlls = { enable = true }, -- Habilitar sqlls para SQL
      vimls = { enable = true }, -- Habilitar vimls para Vim Script
      astro = { enable = true }, -- Habilitar astro
      tailwindcss = { enable = true },
      -- ... otros lenguajes y herramientas
      harper_ls = false, -- Desactivar comentarios de harper lsp
      -- Harper lps, no tiene soporté para el español es-ES, segun la documentación oficial.
    },
    inlay_hints = {
      enabled = false, -- Desactivar inlay hints por defecto
      -- Esto evita que se muestren índices, tipos o nombres de parámetros en línea,
      -- lo cual puede ayudar a mantener el código más limpio y menos distraído.
      -- Si quieres activar los hints temporalmente, puedes usar el atajo <Space>uh en LazyVim.
    },
  },
}
