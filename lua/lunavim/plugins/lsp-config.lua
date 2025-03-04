
return {
  {
    "simrat39/rust-tools.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-lua/plenary.nvim" },
    config = function()
      require("rust-tools").setup({})
    end,
  },

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
        ensure_installed = {
          "lua_ls", "clangd", "rust_analyzer",
          "gopls", "cssls", "emmet_ls",
          "html", "eslint", "jsonls"
        }
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local keyset = vim.keymap.set
      local rt = require("rust-tools")

      lspconfig.lua_ls.setup {}
      lspconfig.clangd.setup {}
      lspconfig.cssls.setup {}
      lspconfig.emmet_ls.setup {}
      lspconfig.html.setup {}
      lspconfig.eslint.setup {}
      lspconfig.omnisharp.setup({
        cmd = { "omnisharp" },
        filetypes = { "cs" },
        root_dir = lspconfig.util.root_pattern("*.sln", "*.csproj"),
      })

      -- Rust specific LSP setup
      rt.setup({
        server = {
          on_attach = function(client, bufnr)
            local bufopts = { noremap = true, silent = true, buffer = bufnr }

            -- Enhanced Rust Tools Keybindings
            keyset("n", "K", rt.hover_actions.hover_actions, bufopts)
            keyset("n", "<leader>ca", rt.code_action_group.code_action_group, bufopts)
            keyset("n", "gd", vim.lsp.buf.definition, bufopts)
            keyset("n", "<leader>rn", vim.lsp.buf.rename, bufopts)
            keyset("n", "<leader>ds", vim.lsp.buf.document_symbol, bufopts)

            -- Format only if the LSP is rust-analyzer
            if client.name == "rust_analyzer" then
              vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                  vim.lsp.buf.format({ async = false })
                end,
              })
            end
          end,
        },
      })
    end,
  }
}
