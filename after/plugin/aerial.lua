require('aerial').setup({
    on_attach = function(bufnr)
        vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
        vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
    end,

    ignore = {
        filetypes = { 'tsx' }
    }
})

vim.keymap.set('n', '<leader>ot', '<cmd>Telescope aerial<CR>')
-- vim.keymap.set('n', '<leader>ot', '<cmd>AerialToggle!<CR>')
-- vim.keymap.set('n', '<leader>of', '<cmd>AerialFocus!<CR>')
