return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "bbjornstad/pretty-fold.nvim",
    lazy = false,
    config = function()
      require("pretty-fold").setup()
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup {
        filters = {
          dotfiles = false,
          custom = { ".DS_Store" },
        },
        git = { ignore = false },
      }
    end,
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },
}
