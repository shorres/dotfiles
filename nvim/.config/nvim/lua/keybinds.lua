vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Increase height/width
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>')
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>')
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>')
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>')

-- Neotest binds
vim.keymap.set("n", "<leader>tr", function() require('neotest').run.run() end)
vim.keymap.set("n", "<leader>tf", function() require('neotest').run.run(vim.fn.expand('%')) end) -- run file
vim.keymap.set("n", "<leader>ts", function() require('neotest').summary.toggle() end)
vim.keymap.set("n", "<leader>to", function() require('neotest').output.open({enter=true}) end)
vim.keymap.set("n", "<leader>tw", function() require('neotest').run.run({ suite = false, concurrent = true }) end)
vim.keymap.set("n", "<leader>tO", function() require('neotest').output_panel.toggle() end)
