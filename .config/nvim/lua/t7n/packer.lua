-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Carbon Theme
  use 'michaeldyrynda/carbon.vim'

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.x',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  -- Telescope: FZF Extension
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" }

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {                                      -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'}, -- Required
      {'L3MON4D3/LuaSnip'},     -- Required
    }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }
  use 'nvim-treesitter/playground'
  use 'nvim-treesitter/nvim-treesitter-context'

  use 'nvim-lua/plenary.nvim'
  use 'roncallyt/vrello.nvim'

  use {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  use 'tpope/vim-fugitive'
  use 'mbbill/undotree'

  use 'wakatime/vim-wakatime'
end)
