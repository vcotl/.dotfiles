require("packer").startup { function()
  use { "wbthomason/packer.nvim" }
	
  use { "nvim-lua/plenary.nvim" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "marko-cerovac/material.nvim" }
  use { "phaazon/hop.nvim", branch = "v1" }
  use { "nvim-telescope/telescope.nvim", tag="nvim-0.6" }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "lewis6991/gitsigns.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "akinsho/bufferline.nvim" }
  use { "numToStr/Navigator.nvim" }
  use { "nvim-lualine/lualine.nvim" }
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" }
  use { "neovim/nvim-lspconfig" }
  use { "hrsh7th/nvim-cmp" }
  use { "hrsh7th/cmp-buffer" }
  use { "hrsh7th/cmp-cmdline" }
  use { "hrsh7th/cmp-path" }
  use { "hrsh7th/cmp-nvim-lsp" }
  use { "hrsh7th/cmp-nvim-lua" }
  use { "saadparwaiz1/cmp_luasnip"}
  use { "L3MON4D3/LuaSnip" }
  use { "folke/which-key.nvim" }
  use { "vimwiki/vimwiki", branch = "dev" }
  use { "jose-elias-alvarez/null-ls.nvim" }
  use { "numToStr/Comment.nvim" }
end }

require "plugins/material"
require "plugins/hop"
require "plugins/telescope"
require "plugins/gitsigns"
require "plugins/bufferline"
require "plugins/lualine"
require "plugins/lspconfig"
require "plugins/nvim-cmp"
require "plugins/treesitter"
require "plugins/navigator"
require "plugins/which-key"
require "plugins/vimwiki"
require "plugins/null-ls"
require "plugins/comment"
