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
  use {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = 'info',
        auto_session_enable_last_session = false,
        auto_session_root_dir = vim.fn.stdpath('data').."/sessions/",
        auto_session_enabled = true,
        auto_save_enabled = nil,
        auto_restore_enabled = nil,
        auto_session_suppress_dirs = nil,
        auto_session_use_git_branch = nil,
        -- the configs below are lua only
        bypass_session_save_file_types = nil
      }
    end
  }

  use {
    'rmagatti/session-lens',
    requires = {'rmagatti/auto-session', 'nvim-telescope/telescope.nvim'},
    config = function()
      require('session-lens').setup()
    end
  }

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

  -- Debugger
  use 'mfussenegger/nvim-dap'
  use 'rcarriga/nvim-dap-ui'
  use { "mxsdev/nvim-dap-vscode-js", requires = {"mfussenegger/nvim-dap"} }


  -- Themes/UI
  use 'sainnhe/everforest'
  use 'arcticicestudio/nord-vim'
  use 'catppuccin/vim'
  use 'kyazdani42/nvim-web-devicons'
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'glepnir/dashboard-nvim'

  -- Misc
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'alvan/vim-closetag'
  use 'preservim/nerdcommenter'
  use 'voldikss/vim-floaterm'
end)


-- LSP
require ('confs.nvim-lsp-installer')
require ('confs.nvim-lspconfig')
require ('confs.nvim-cmp')
require ('confs.nvim-treesitter')
require ('confs.lspsaga')

require ('confs.nvim-tree')
require ('confs.bufferline')

require('confs.dashboard')
require('confs.nvim-dap')
require('confs.nvim-dap-ui')
require('confs.floaterm')
