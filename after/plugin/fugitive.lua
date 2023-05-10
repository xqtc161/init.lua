vim.keymap.set("n", "<leader>Gs", ":Git status<CR>");
vim.keymap.set("n", "<leader>Gf", ":Git fetch<CR>");
--vim.keymap.set("n", "<leader>Ga", ":Git add .<CR> \"Added files\"");
vim.keymap.set("n", "<leader>Ga", function ()
    vim.cmd(":Git add .")
    print("Files added")
end) 
vim.keymap.set("n", "<leader>Gc", ":Git commit<CR>");
vim.keymap.set("n", "<leader>GP", ":Git push<CR>");
vim.keymap.set("n", "<leader>Gp", ":Git pull<CR>");
vim.keymap.set("n", "<leader>Gd", ":Git diff<CR>");
