
    return {
    {
      "onsails/lspkind.nvim",
      config = function()
        require("lspkind").init({
          mode = "symbol_text", -- Mostrar ícono + texto
          preset = "default",  -- Preset de íconos
          symbol_map = {       -- Opcional: Personaliza los íconos
          Text = "󰉿",
          Method = "󰆧",
          Function = "󰊕",
          Constructor = "",
          Field = "󰜢",
          Variable = "󰀫",
          Class = "󰠱",
          Interface = "",
          Module = "",
          Property = "󰜢",
          Unit = "󰑭",
          Value = "󰎠",
          Enum = "",
          Keyword = "󰌋",
          Snippet = "",
          Color = "󰏘",
          File = "󰈙",
          Reference = "󰈇",
          Folder = "󰉋",
          EnumMember = "",
          Constant = "󰏿",
          Struct = "󰙅",
          Event = "",
          Operator = "󰆕",
          TypeParameter = "",
          },
        })
      end,
    }
  }
  