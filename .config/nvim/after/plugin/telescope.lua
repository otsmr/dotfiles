local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require("telescope").load_extension("git_worktree")
vim.keymap.set('n', '<C-x>', function()
  require('telescope').extensions.git_worktree.git_worktrees()
end)
-- :lua require('telescope').extensions.git_worktree.git_worktrees()

