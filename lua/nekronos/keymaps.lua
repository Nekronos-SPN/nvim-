-- Tab management
vim.api.nvim_set_keymap('n', '<C-B>', '<cmd>NvimTreeToggle<cr>', {noremap=true}) -- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<C-H>', 'gt', {noremap=true}) -- Previous tab
vim.api.nvim_set_keymap('n', '<C-L>', 'gt', {noremap=true})-- Next tab
vim.api.nvim_set_keymap('n', '<C-N>', '<cmd>tabe<cr>', {noremap=true}) -- Create new tab
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>bp<bar>sp<bar>bn<bar>bd<cr>', {noremap=true}) -- Delete buffer and avoid closing window

-- FZF usage
vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<cr>') -- File search
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua live_grep<cr>') -- Grep search

-- Toggle terminal
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>ToggleTerm direction=float<cr>', {noremap=true})
