vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])



vim.keymap.set("n", "<leader>w", vim.cmd.FormatWrite)
vim.keymap.set("n", "<leader>hh", vim.cmd.Alpha)
