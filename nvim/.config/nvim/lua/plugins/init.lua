require("packer").startup(function()
  use { "wbthomason/packer.nvim" }
  use { "nvim-lua/plenary.nvim" }
  use { "kyazdani42/nvim-web-devicons" }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use { "lukas-reineke/indent-blankline.nvim" }
  use { "L3MON4D3/LuaSnip" }
  use { "jghauser/follow-md-links.nvim" }

  use {
    "petertriho/nvim-scrollbar",
    config = function() require("scrollbar").setup() end,
  }

  use {
    "numToStr/Navigator.nvim",
    config = function() require("Navigator").setup() end,
  }

  use {
    "phaazon/hop.nvim",
    config = function() require("hop").setup() end,
    branch = "v1",
  }

  use {
    "folke/which-key.nvim",
    config = function() require("which-key").setup() end,
  }

  use {
    "echasnovski/mini.nvim",
    config = function()
      require("mini.comment").setup()
      require("mini.pairs").setup()
      require("mini.surround").setup()
      require("mini.trailspace").setup()
    end,
    branch = "stable",
  }

  use {
    "marko-cerovac/material.nvim",
    config = function() require("plugins/material") end,
  }

  use {
    "lewis6991/gitsigns.nvim",
    config = function() require("plugins/gitsigns") end,
  }

  use {
    "akinsho/bufferline.nvim",
    config = function() require("plugins/bufferline") end,
  }

  use {
    "nvim-lualine/lualine.nvim",
    config = function() require("plugins/lualine") end,
  }

  use {
    "neovim/nvim-lspconfig",
    config = function() require("plugins/lspconfig") end,
  }

  use {
    "nvim-telescope/telescope.nvim",
    config = function() require("plugins/telescope") end,
    tag = "nvim-0.6",
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    config = function() require("plugins/treesitter") end,
    run = ":TSUpdate",
  }

  use {
    "jose-elias-alvarez/null-ls.nvim",
    config = function() require("plugins/null-ls") end,
  }

  use {
    "hrsh7th/nvim-cmp",
    config = function() require("plugins/nvim-cmp") end,
    requires = {
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-cmdline" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "saadparwaiz1/cmp_luasnip"},
    },
  }
end)
