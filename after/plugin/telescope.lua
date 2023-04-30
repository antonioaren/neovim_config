local builtin  = require('telescope.builtin')
-- Command done to search any file globally
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
-- Command to look for git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
-- Command to look for a file that content any word
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

