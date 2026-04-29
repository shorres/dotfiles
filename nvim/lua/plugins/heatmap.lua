return {
  dir = 'D:/Repos/calendar-heatmap',
  name = 'heatmap',
  event = 'VimEnter',
  keys = {
    { '<leader>H', '<cmd>Heatmap<cr>', desc = 'Nvim activity heatmap' },
  },
  config = function()
    require('heatmap').setup({
      weeks = 20,
      -- colors override (optional — defaults match everforest dark)
      -- colors = {
      --   l4    = '#83c092',
      --   today = '#e69875',
      -- },
    })
  end,
}
