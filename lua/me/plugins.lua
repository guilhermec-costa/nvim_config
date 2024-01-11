local packer_status, packer = pcall(require, 'packer')
if not packer_status then
    return
end


return packer.startup(function(use)
    -- plugins
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use 'tpope/vim-fugitive'
    use { 'rose-pine/neovim' }

    use { 'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install', cmd = 'MarkdownPreview'
    }

    use "windwp/nvim-autopairs"

    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'xiyaowong/transparent.nvim'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            --- Uncomment the two plugins below if you want to manage the language servers from neovim
            --- and read this: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/integrate-with-mason-nvim.md
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use {'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
end)
