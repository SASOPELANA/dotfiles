return {
  -- entre tus otros plugins
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 15, -- Tamaño del terminal
      open_mapping = [[<c-t>]], -- Atajo para abrir el terminal
      direction = "horizontal", -- Dirección del terminal ('horizontal', 'vertical', 'tab')
      shade_terminals = true, -- Habilitar sombreado en el terminal
      start_in_insert = true, -- Iniciar en modo de inserción
      shell = "/usr/bin/zsh", -- Usar PowerShell Core
      close_on_exit = true, -- Cerrar el terminal cuando el proceso finalice
    },
  },
}
