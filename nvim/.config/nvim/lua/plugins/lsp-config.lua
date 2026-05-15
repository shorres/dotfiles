return {
  {
    "mason-org/mason.nvim",
    opts = {},
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "gopls","ts_ls", "pyright"},
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("lua_ls", {})
      vim.lsp.config("gopls",{})
      vim.lsp.config("ts_ls",{})
      vim.lsp.config("pyright",{})

      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('UserLspConfig', {}),
        callback = function(ev)
          -- Buffer local mappings
          local opts = { buffer = ev.buf }
          vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
          vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
          vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
          vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
          -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
          vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
          vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
          vim.keymap.set('n', '<leader>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
          end, opts)
          vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
          vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
          vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
          vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
          -- vim.keymap.set('n', '<leader>f', function()
            --   vim.lsp.buf.format { async = true }
            -- end, opts)

            vim.keymap.set("n", ";h", "<cmd>ClangdSwitchSourceHeader<cr>", opts)
          end,
        })
    end
  }
}
