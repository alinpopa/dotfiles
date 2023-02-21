return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')
    use('nvim-tree/nvim-tree.lua')
    --use 'Mofiqul/dracula.nvim'
    use('alinpopa/justfalcon')
    --use('ellisonleao/gruvbox.nvim')
    use('nvim-lualine/lualine.nvim')
    use('scrooloose/nerdcommenter')
    use({
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    })
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('elixir-editors/vim-elixir')
    use('nvim-treesitter/playground')
    use('neovim/nvim-lspconfig')
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/vim-vsnip")
    use("onsails/lspkind-nvim")
end)
