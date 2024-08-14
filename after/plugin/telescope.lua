local builtin = require('telescope.builtin')
require("telescope").load_extension("undo")
-- base telescope config
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)

-- telescope undo tree config
vim.keymap.set("n", "<leader>us", "<cmd>Telescope undo<CR>")

