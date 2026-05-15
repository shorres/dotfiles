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
      adapters = {
        require('neotest-playwright').adapter({
          options = {
            persist_project_selection = true,
            enable_dynamic_test_discovery = true,
          },
        }),
      },
    })
  end,
}
