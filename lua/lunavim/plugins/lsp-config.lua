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
                            "emmet_ls", "html", "eslint",
                            "jsonls"}
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local keyset = vim.keymap.set

      lspconfig.lua_ls.setup {}
      lspconfig.clangd.setup {}
      lspconfig.cssls.setup {}
      lspconfig.emmet_ls.setup {}
      lspconfig.html.setup {}
      lspconfig.eslint.setup {}

      keyset("n", "K", vim.lsp.buf.hover, {})
      keyset('n', 'gd', vim.lsp.buf.definition, {})
      keyset({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
}
