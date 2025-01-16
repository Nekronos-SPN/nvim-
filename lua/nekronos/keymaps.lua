-- Tab management
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap=true}) -- Set terminal escape
vim.api.nvim_set_keymap('n', '<C-B>', '<cmd>NvimTreeToggle<cr>', {noremap=true}) 	-- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<C-H>', 'gt', {noremap=true}) -- Previous tab
vim.api.nvim_set_keymap('n', '<C-L>', 'gt', {noremap=true})-- Next tab
vim.api.nvim_set_keymap('n', '<S-H>', '<cmd>bp<cr>', {noremap=true}) -- Previous tab
vim.api.nvim_set_keymap('n', '<S-L>', '<cmd>bn<cr>', {noremap=true})-- Next tab
vim.api.nvim_set_keymap('n', '<C-N>', '<cmd>tabe<cr>', {noremap=true}) -- Create new tab

-- Set terminal close on exit
vim.api.nvim_create_autocmd('TermClose', {
    callback = function()
       vim.cmd('bdelete')
    end
})
