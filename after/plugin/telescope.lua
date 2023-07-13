local builtin = require('telescope.builtin')
local themes = require('telescope.themes')
vim.keymap.set('n', '<leader>ff', function ()
    builtin.find_files(themes.get_ivy({}));
end, {})

vim.keymap.set('n', '<leader>fg', function ()
    builtin.git_files(themes.get_ivy({}));
end, {})

vim.keymap.set('n', '<leader>fi', function()
	builtin.grep_string({ search = vim.fn.input("Grep >") });
end)

vim.keymap.set('n', '<leader>bb', function ()
    builtin.buffers(themes.get_ivy({}));
end, {})

vim.keymap.set('n', '<leader>cs', builtin.colorscheme, {})
vim.keymap.set('n', '<leader>cs', function ()
    builtin.colorscheme(themes.get_ivy({}));
end, {})

vim.keymap.set('n', '<leader>lm', builtin.reloader, {})
vim.keymap.set('n', '<leader>lm', function ()
    builtin.reloader(themes.get_ivy({}));
end, {})

vim.keymap.set('n', '<leader>tp', function ()
    builtin.builtin(themes.get_ivy({}));
end, {})
