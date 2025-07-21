return {
  "mistweaverco/kulala.nvim",
  ft = "http",
  keys = {
    -- <leader>R (no está asignado un comando, solo es un grupo para mostrar en el menú)
    { "<leader>R", "", desc = "+Rest", ft = "http" },

    -- <leader>Rb: Abre un "scratchpad", un área temporal para probar o escribir peticiones HTTP rápidamente
    { "<leader>Rb", "<cmd>lua require('kulala').scratchpad()<cr>", desc = "Open scratchpad", ft = "http" },

    -- <leader>Rc: Copia la petición HTTP actual como un comando curl para usar en terminal o scripts
    { "<leader>Rc", "<cmd>lua require('kulala').copy()<cr>", desc = "Copy as cURL", ft = "http" },

    -- <leader>RC: Pega un comando curl y lo convierte en una petición HTTP en formato kulala
    { "<leader>RC", "<cmd>lua require('kulala').from_curl()<cr>", desc = "Paste from curl", ft = "http" },

    -- <leader>Rg: Descarga el esquema GraphQL (útil si usas GraphQL y quieres la definición del schema)
    {
      "<leader>Rg",
      "<cmd>lua require('kulala').download_graphql_schema()<cr>",
      desc = "Download GraphQL schema",
      ft = "http",
    },

    -- <leader>Ri: Inspecciona la petición HTTP actual (muestra info detallada)
    { "<leader>Ri", "<cmd>lua require('kulala').inspect()<cr>", desc = "Inspect current request", ft = "http" },

    -- <leader>Rn: Salta a la siguiente petición HTTP en el buffer
    { "<leader>Rn", "<cmd>lua require('kulala').jump_next()<cr>", desc = "Jump to next request", ft = "http" },

    -- <leader>Rp: Salta a la petición HTTP anterior en el buffer
    { "<leader>Rp", "<cmd>lua require('kulala').jump_prev()<cr>", desc = "Jump to previous request", ft = "http" },

    -- <leader>Rq: Cierra la ventana o panel actual que muestra resultados o peticiones
    { "<leader>Rq", "<cmd>lua require('kulala').close()<cr>", desc = "Close window", ft = "http" },

    -- <leader>Rr: Repite la última petición HTTP ejecutada
    { "<leader>Rr", "<cmd>lua require('kulala').replay()<cr>", desc = "Replay the last request", ft = "http" },

    -- <leader>Rs: Envía la petición HTTP actual
    { "<leader>Rs", "<cmd>lua require('kulala').run()<cr>", desc = "Send the request", ft = "http" },

    -- <leader>RS: Muestra estadísticas o detalles de la última petición (tiempo, tamaño, etc.)
    { "<leader>RS", "<cmd>lua require('kulala').show_stats()<cr>", desc = "Show stats", ft = "http" },

    -- <leader>Rt: Alterna entre mostrar el cuerpo de la respuesta y los encabezados (headers)
    { "<leader>Rt", "<cmd>lua require('kulala').toggle_view()<cr>", desc = "Toggle headers/body", ft = "http" },
  },
  opts = {},
}
