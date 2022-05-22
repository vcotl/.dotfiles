require("packer").startup(function()
  use { "wbthomason/packer.nvim" }
	
  use { "nvim-lua/plenary.nvim" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "L3MON4D3/LuaSnip" }
  use { "marko-cerovac/material.nvim", config = 'require "plugins/material"' }
  use { "phaazon/hop.nvim", config = 'require("hop").setup()', branch = "v1" }
  use { "lewis6991/gitsigns.nvim", config = 'require "plugins/gitsigns"' }
  use { "akinsho/bufferline.nvim", config = 'require "plugins/bufferline"' }
  use { "numToStr/Navigator.nvim", config = 'require("Navigator").setup()' }
  use { "nvim-lualine/lualine.nvim", config = 'require "plugins/lualine"' }
  use { "neovim/nvim-lspconfig", config = 'require "plugins/lspconfig"'}
  use { "folke/which-key.nvim", config = 'require("which-key").setup()' }
  use { "numToStr/Comment.nvim", config = 'require "plugins/comment"' }
  use { "nvim-telescope/telescope.nvim",
    config = 'require "plugins/telescope"', tag="nvim-0.6" 
  }
  use { "nvim-treesitter/nvim-treesitter", 
    config = 'require "plugins/treesitter"', run = ":TSUpdate"
  }
  use { "jose-elias-alvarez/null-ls.nvim", 
    config = 'require "plugins/null-ls"'
  }
  use { "hrsh7th/nvim-cmp", 
    config = 'require "plugins/nvim-cmp"',
    requires = {
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-cmdline" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "saadparwaiz1/cmp_luasnip"},
    }
  }
end)
