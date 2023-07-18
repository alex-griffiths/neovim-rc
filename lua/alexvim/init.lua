require("alexvim.set")
require("alexvim.remap")

require 'nvim-treesitter.install'.compilers = { "clang" }

vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_tail_size = 0
vim.g.neovide_cursor_vfx_mode = ""

vim.g.neovide_transparency = 0.9
vim.g.neovide_refresh_rate = 60

vim.o.guifont = "Source Code Pro:h10"
