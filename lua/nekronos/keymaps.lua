-- Tab management
vim.api.nvim_set_keymap('n', '<C-B>', '<cmd>NvimTreeToggle<cr>', {noremap=true}) 	-- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<C-H>', 'gt', {noremap=true}) -- Previous tab
vim.api.nvim_set_keymap('n', '<C-L>', 'gt', {noremap=true})-- Next tab
vim.api.nvim_set_keymap('n', '<C-N>', '<cmd>tabe<cr>', {noremap=true}) -- Create new tab
vim.api.nvim_set_keymap('n', '<C-X>', '<cmd>bp<bar>sp<bar>bn<bar>bd<cr>', {noremap=true}) -- Delete buffer and avoid closing window

-- Telescope usage
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Toggle terminal
vim.api.nvim_set_keymap('n', '<C-T>', '<cmd>ToggleTerm direction=float<cr>', {noremap=true})

-- Set terminal close on exit
vim.api.nvim_create_autocmd('TermClose', {
    callback = function()
       vim.cmd('bdelete')
    end
})
