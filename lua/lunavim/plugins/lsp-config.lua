return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "clangd", "cssls",
                            "emmet_ls", "html", "eslint"}
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")

      lspconfig.lua_ls.setup {
        -- Server-specific settings. See `:help lspconfig-setup`
        settings = {
          ['lua_ls'] = {},
        },
      }

      lspconfig.clangd.setup {
        -- Server-specific settings. See `:help lspconfig-setup`
        settings = {
          ['clangd'] = {},
        },
      }

      lspconfig.cssls.setup {
        -- Server-specific settings. See `:help lspconfig-setup`
        settings = {
          ['cssls'] = {},
        },
      }

      lspconfig.emmet_ls.setup {
        -- Server-specific settings. See `:help lspconfig-setup`
        settings = {
          ['emmet_ls'] = {},
        },
      }

      lspconfig.html.setup {
        -- Server-specific settings. See `:help lspconfig-setup`
        settings = {
          ['html'] = {},
        },
      }

      lspconfig.eslint.setup {
        -- Server-specific settings. See `:help lspconfig-setup`
        settings = {
          ['eslint'] = {},
        },
      }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
}
