local hp = require("harpoon")
local hpm = require("harpoon.mark")

require("harpoon").setup({ ... })
require("telescope").load_extension("harpoon")

vim.keymap.set("n", "<leader>hhm", ":Telescope harpoon marks<CR>")
vim.keymap.set("n", "<leader>hm", ":lua require('harpoon.mark').add_file()<CR>")
