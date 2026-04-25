return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-neotest/nvim-nio",
  },

  {
    "mfussenegger/nvim-dap",
    lazy = false,
    config = function()
      require("dap")
    end,
  },

  {
    "rcarriga/nvim-dap-ui",
    lazy = false,
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("dapui").setup()
    end,
  },

  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
  },

  -- Optional examples below

  -- { import = "nvchad.blink.lazyspec" },

  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = {
  --     ensure_installed = {
  --       "vim",
  --       "lua",
  --       "vimdoc",
  --       "html",
  --       "css",
  --     },
  --   },
  -- },
}
