-- Tab management
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap=true}) -- Set terminal escape
vim.api.nvim_set_keymap('n', '<C-B>', '<cmd>NvimTreeToggle<cr>', {noremap=true}) 	-- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<C-H>', 'gt', {noremap=true}) -- Previous tab
vim.api.nvim_set_keymap('n', '<C-L>', 'gt', {noremap=true})-- Next tab
vim.api.nvim_set_keymap('n', '<C-N>', '<cmd>tabe<cr>', {noremap=true}) -- Create new tab
vim.api.nvim_set_keymap('n', '<C-J>', '<cmd>bp<cr>', {noremap=true}) -- Previous buffer
vim.api.nvim_set_keymap('n', '<C-K>', '<cmd>bn<cr>', {noremap=true})-- Next buffer
vim.api.nvim_set_keymap('n', '<C-X>', '<cmd>bp<bar>sp<bar>bn<bar>bd<cr>', {noremap=true}) -- Delete buffer and avoid closing window

-- Toggle terminal
vim.api.nvim_set_keymap('n', '<C-T>', '<cmd>ToggleTerm direction=float<cr>', {noremap=true})

-- Set terminal close on exit
vim.api.nvim_create_autocmd('TermClose', {
    callback = function()
       vim.cmd('bdelete')
    end
})
