return {
  {
    'numToStr/Comment.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {}
  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        surrounds = {
          ["("] = {
            add = { "(", ")" },
            find = function()
              return M.get_selection({ motion = "a(" })
            end,
            delete = "^(. ?)().-( ?.)()$",
          },
          ["{"] = {
            add = { "{", "}" },
            find = function()
              return M.get_selection({ motion = "a{" })
            end,
            delete = "^(. ?)().-( ?.)()$",
          },
          ["<"] = {
            add = { "<", ">" },
            find = function()
              return M.get_selection({ motion = "a<" })
            end,
            delete = "^(. ?)().-( ?.)()$",
          },
          ["["] = {
            add = { "[", "]" },
            find = function()
              return M.get_selection({ motion = "a[" })
            end,
            delete = "^(. ?)().-( ?.)()$",
          }
        },
      })
    end
  },

  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function ()
      require("oil").setup()
    end
  },

  {
    'barrett-ruth/live-server.nvim',
    build = 'npm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop' },
    config = true
  },

  {
    "jiaoshijie/undotree",
    dependencies = "nvim-lua/plenary.nvim",
    config = true,
    keys = { -- load the plugin only when using it's keybinding:
      { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
    },
  }

}

