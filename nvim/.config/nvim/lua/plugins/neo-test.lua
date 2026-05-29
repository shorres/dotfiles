return {
  'nvim-neotest/neotest',
  dependencies = {
    'thenbe/neotest-playwright',
    'nvim-telescope/telescope.nvim',
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "antoinemadec/FixCursorHold.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    require('neotest').setup({
      dependencies = {
        "nvim-neotest/nvim-nio",
        "nvim-lua/plenary.nvim",
        "antoinemadec/FixCursorHold.nvim",
        "nvim-treesitter/nvim-treesitter"
      },
      adapters = {
        require('neotest-playwright').adapter({
          options = {
            persist_project_selection = true,
            enable_dynamic_test_discovery = true,
            get_playwright_binary = function()
              return vim.loop.cwd() .. '/node_modules/.bin/playwright'
            end,

            get_playwright_config = function()
              return vim.loop.cwd() .. '/playwright.config.js'
            end,
            is_test_file = function(file_path)
              -- By default, only returns true if a file contains one of several file
              -- Alternative example: Match only files that end in `test.ts`
              local result = file_path:find('%.test%.ts$') ~= nil
              return result
            end,
            experimental = {
              telescope = {
                -- In normal mode, `<Tab>` toggles the project under the cursor.
                -- `<CR>` (enter key) applies the selection.
                enabled = false,
                opts = {},
              },
            },
          },
        }),
      },
    })
  end,
}
