require("nvchad.configs.lspconfig").defaults()

local servers = {
  "html", "cssls", "ruff", "clangd",
  "jedi_language_server",
  "jdtls", "ts_ls", "lua_ls"
}
vim.lsp.enable(servers)
vim.lsp.config.jedi_language_server = {
  config = {
    jediSettings = {
      debug = true,
    }
  }
}
-- read :h vim.lsp.config for changing options of lsp servers
