-- Buffer management
vim.api.nvim_set_keymap('n', '<C-B>', '<cmd>NvimTreeToggle<cr>', {noremap=true}) -- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<leader>x', '<cmd>bp<bar>sp<bar>bn<bar>bd<cr>', {noremap=true}) -- Delete buffer and avoid closing window

-- FZF usage
vim.keymap.set('n', '<leader>ff', '<cmd>FzfLua files<cr>') -- File search
vim.keymap.set('n', '<leader>fg', '<cmd>FzfLua live_grep<cr>') -- Grep search
vim.keymap.set('n', '<leader>fv', '<cmd>FzfLua grep_visual<cr>') -- Grep search highlighted content under visual
vim.keymap.set('n', '<leader>fb', '<cmd>FzfLua buffers<cr>') -- Grep search

-- LSP Diagnostics
vim.keymap.set('n', ']g', vim.diagnostic.goto_next)
vim.keymap.set('n', '[g', vim.diagnostic.goto_prev)

-- Toggle terminal
vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>ToggleTerm direction=float<cr>', {noremap=true})
