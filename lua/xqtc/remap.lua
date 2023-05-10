vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex)

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-Right>", "<c-w>l")
vim.keymap.set("n", "<C-Left>", "<c-w>h")
vim.keymap.set("n", "<C-Up>", "<c-w>k")
vim.keymap.set("n", "<C-Down>", "<c-w>j")

vim.keymap.set("n", "<leader>w", vim.cmd.FormatWrite)
vim.keymap.set("n", "<leader>hh", vim.cmd.Alpha)
