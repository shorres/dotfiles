return {
  "romgrk/barbar.nvim",
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    local opts = { noremap = false, silent = true}
    vim.g.barbar_auto_setup = false
    vim.keymap.set('n','<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    vim.keymap.set('n','<A-.>', '<Cmd>BufferNext<CR>', opts)
    vim.keymap.set('n','<A-c>', '<Cmd>BufferClose<CR>', opts)
  end
}
