-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
local servers = { "lua_ls", "html", "cssls", "jdtls", "clangd" }
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

require("lspconfig").ruff.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
})

require("lspconfig").jedi_language_server.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	config = {
		jediSettings = {
			debug = true,
		},
	},
})
-- configuring single server, example: typescript
lspconfig.ts_ls.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
})

lspconfig.harper_ls.setup({
	on_attach = nvlsp.on_attach,
	on_init = nvlsp.on_init,
	capabilities = nvlsp.capabilities,
	filetypes = { "markdown", "html" },
})
