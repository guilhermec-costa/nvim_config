local packer_status, packer = pcall(require, 'packer')
if not packer_status then
    return
end

return packer.startup(function(use)
    -- plugins
    use 'wbthomason/packer.nvim'
    use 'nvim-lua/plenary.nvim'
    use {'xiyaowong/transparent.nvim',
        config = function() vim.cmd('TransparentEnable') end
    }
    use {'rose-pine/neovim'}

    use {'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install', cmd = 'MarkdownPreview'
    }

end)

