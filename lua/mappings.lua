require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

-- Center screen on scroll
map("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })
map("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })

-- Command mode shortcut
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Escape shortcut
map("i", "jk", "<ESC>")

-- =========================
-- LSP Code Actions (Harper)
-- =========================

-- Normal mode
map("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

-- Visual mode (important for grammar tools)
map("v", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "LSP Code Action" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
