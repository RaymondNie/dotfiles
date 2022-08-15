vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Navigation
    use 'kyazdani42/nvim-tree.lua'
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    use 'nvim-lua/plenary.nvim'
    use 'nvim-telescope/telescope.nvim'
    use 'ThePrimeagen/harpoon'
    use 'mbbill/undotree'

    -- LSP
    use 'williamboman/nvim-lsp-installer'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'glepnir/lspsaga.nvim'

    -- Themes/UI
    use 'sainnhe/everforest'
    use 'kyazdani42/nvim-web-devicons'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- Misc
    use 'tpope/vim-surround'
    use 'tpope/vim-fugitive'
    use 'alvan/vim-closetag'
    use 'preservim/nerdcommenter'
end)

-- LSP
require ('confs.nvim-lsp-installer')
require ('confs.nvim-lspconfig')
require ('confs.nvim-cmp')
require ('confs.nvim-treesitter')
require ('confs.lspsaga')

require ('confs.nvim-tree')
require ('confs.bufferline')
