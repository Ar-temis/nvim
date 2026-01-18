require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html",
  "cssls",
  "clangd",
  "pylsp",
  "postgres_lsp",
  "jdtls",
  "ts_ls",
  "lua_ls",
}
-- vim.lsp.config.jedi_language_server = {
--   config = {
--     jediSettings = {
--       debug = true,
--     },
--   },
-- }

vim.lsp.config("pylsp", {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { "W391" },
          maxLineLength = 120,
        },
      },
    },
  },
})
vim.lsp.enable(servers)
-- read :h vim.lsp.config for changing options of lsp servers
