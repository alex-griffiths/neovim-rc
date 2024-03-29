vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup({
    -- update_focused_file.enable
})
local api = require("nvim-tree.api")

vim.keymap.set("n", "<leader>ex", function() api.tree.toggle({ find_file = true, update_root = true }) end)
