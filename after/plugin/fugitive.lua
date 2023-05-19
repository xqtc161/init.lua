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
vim.keymap.set("n", "<leader>Gd", ":Git diff " .. vim.api.nvim_get_current_buf() .. "<CR>");
vim.keymap.set("n", "<leader>Gdg", ":Git diff<CR>")

vim.keymap.set("n", "<leader>Gd", function()
  local current_buf = vim.api.nvim_get_current_buf()
  local current_buf_name = vim.fn.bufname(current_buf)
  vim.cmd(":Git diff " .. current_buf_name)
end, {silent = true})
