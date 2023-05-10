vim.g.mapleader = " "


vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
vim.keymap.set("n", "<leader>es", ":Lexplore | :vertical resize 20<CR>")

vim.keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-Right>", "<c-w>l")
vim.keymap.set("n", "<C-Left>", "<c-w>h")
vim.keymap.set("n", "<C-Up>", "<c-w>k")
vim.keymap.set("n", "<C-Down>", "<c-w>j")

-- move selection linewise
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- when pasting on selected text; selected text gets send to void buffer while original copied text is preserved in the clipoard
vim.keymap.set("x", "<leader>p", '"_dP')

-- make current file executable
vim.keymap.set("x", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<leader>w", vim.cmd.FormatWrite)
vim.keymap.set("n", "<leader>hh", vim.cmd.Alpha)
