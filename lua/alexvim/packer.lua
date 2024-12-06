-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- use { 'Everblush/nvim', as = 'everblush' }
    use { 'sainnhe/everforest', as = 'everforest' }
    use "rainglow/vim"

    use({
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim'
    })

    use 'folke/zen-mode.nvim'
    use 'github/copilot.vim'

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            require("nvim-tree").setup {}
        end
    }

    use({ 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } })
    use 'nvim-treesitter/nvim-treesitter-context'
    use 'theprimeagen/harpoon'
    use 'mbbill/undotree'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use 'mhinz/vim-signify'
    use 'itchyny/lightline.vim'
    use 'rstacruz/vim-closer'
    use 'm-demare/hlargs.nvim'

    use {
        'stevearc/aerial.nvim',
        config = function() require('aerial').setup() end
    }

    use { 'anuvyklack/pretty-fold.nvim',
        config = function()
            require('pretty-fold').setup()
        end
    }
    -- Lua
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {
            }
        end
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v4.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
end)
