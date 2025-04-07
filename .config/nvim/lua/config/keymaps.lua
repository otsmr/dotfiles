-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local map = LazyVim.safe_keymap_set

vim.keymap.set("n", "<C-f>", "<leader>ff", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<C-f>", "<leader>ff", { desc = "Split Window Below", remap = true })

vim.keymap.set("i", "jk", "<ESC>", opts)
-- local actions = require("telescope.actions")
-- vim.keymap.set("n", "<C-f>", actions.find_file, opts)
vim.keymap.set("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
vim.keymap.set("n", "[d", vim.diagnostic.goto_next, opts)
vim.keymap.set("n", "]d", vim.diagnostic.goto_prev, opts)
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
vim.keymap.set("n", "ga", vim.lsp.buf.code_action, keymap_opts)
