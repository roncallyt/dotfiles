return {
  -- Catppuccin Theme
  { 'catppuccin/nvim', name = 'catppuccin' },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'kyazdani42/nvim-web-devicons',
      lazy = true
    }
  },

  -- Telescope
  {
    'nvim-telescope/telescope.nvim',
    version = '0.1.x',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },

  -- Telescope: FZF Extension
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make'
  },

  -- Snippets
  {
    'L3MON4D3/LuaSnip',
    run = 'make install_jsregexp'
  },

  -- LSP
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  },

  -- Treesitter
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  },
  'nvim-treesitter/playground',
  'nvim-treesitter/nvim-treesitter-context',

  -- Harpoon
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },

  -- GIT Integration
  'tpope/vim-fugitive',

  -- Essencials
  'mbbill/undotree',

  -- Productivity
  'wakatime/vim-wakatime',

  {
    'roncallyt/vrello.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  }
}
