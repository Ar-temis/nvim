require("nvchad.configs.lspconfig").defaults()

local servers = {
	"html",
	"cssls",
	"clangd",
	-- "ruff",
	"pylsp",
	"pyright",
	"postgres_lsp",
	"jdtls",
	"ts_ls",
	"lua_ls",
	"harper_ls",
}
vim.lsp.config("harper_ls", {
	filetypes = { "quarto" },
	settings = {
		["harper-ls"] = {
			linters = {
				SpellCheck = false,
				SpelledNumbers = false,
				AnA = true,
				SentenceCapitalization = false,
				UnclosedQuotes = true,
				WrongQuotes = false,
				LongSentences = true,
				RepeatedWords = true,
				Spaces = true,
				Matcher = true,
				CorrectNumberSuffix = true,
			},
			codeActions = {
				ForceStable = false,
			},
			markdown = {
				IgnoreLinkTitle = false,
			},
			diagnosticSeverity = "hint",
			isolateEnglish = false,
			dialect = "American",
			maxFileLength = 120000,
			ignoredLintsPath = "",
			excludePatterns = {},
		},
	},
})

vim.lsp.config("ruff", {
	init_options = {
		settings = {
			line_length = 120,
		},
	},
})

vim.lsp.config("pyright", {
	settings = {
		pyright = {
			disableOrganizeImports = true,
			disableLanguageServices = true,
		},
	},
})

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
