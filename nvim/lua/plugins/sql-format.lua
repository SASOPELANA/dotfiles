-- ⚠️ Antes de usar esta configuración, instalá sql-formatter globalmente:
-- npm install -g sql-formatter
-- Asegúrate de que esté en tu $PATH

return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sql_formatter" },
      },
    },
  },
}
