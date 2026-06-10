-- Añade esto a ~/.config/nvim/lua/config/autocmds.lua
-- Se ejecuta después de que TODO, incluido el tema, esté listo.
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    -- Define o re-define tus grupos de color personalizados AQUÍ
    vim.api.nvim_set_hl(0, "MiniIconsCss", { fg = "#663399" })
    vim.api.nvim_set_hl(0, "MiniIconsMdx", { fg = "#bcd434" })
    vim.api.nvim_set_hl(0, "MiniIconsTs", { fg = "#0188d1" })
    vim.api.nvim_set_hl(0, "MiniIconsSh", { fg = "#ff7043" })
    vim.api.nvim_set_hl(0, "MiniIconsMiddleware", { fg = "#6a5acd" })
    vim.api.nvim_set_hl(0, "MiniIconsComponent", { fg = "#a98f43" })
    vim.api.nvim_set_hl(0, "MiniIconsApi", { fg = "#b4c555" })
    vim.api.nvim_set_hl(0, "MiniIconsContext", { fg = "#2bb153" })
    vim.api.nvim_set_hl(0, "MiniIconsConfig", { fg = "#1bd1c2" })
    vim.api.nvim_set_hl(0, "MiniIconsIcon", { fg = "#1dac73" })
    vim.api.nvim_set_hl(0, "MiniIconsFont", { fg = "#d1564d" })
    vim.api.nvim_set_hl(0, "MiniIconsUtil", { fg = "#8ed289" })
    vim.api.nvim_set_hl(0, "MiniIconsHook", { fg = "#9273d0" })
    vim.api.nvim_set_hl(0, "MiniIconsRepo", { fg = "#64a528" })
    vim.api.nvim_set_hl(0, "MiniIconsI18n", { fg = "#847fe2" })
    vim.api.nvim_set_hl(0, "MiniIconsScript", { fg = "#658794" })
    vim.api.nvim_set_hl(0, "MiniIconsPublic", { fg = "#4ceaef" })
    vim.api.nvim_set_hl(0, "MiniIconsCommon", { fg = "#802e9b" })
    vim.api.nvim_set_hl(0, "MiniIconsEnum", { fg = "#1bac94" })
  end,
})
