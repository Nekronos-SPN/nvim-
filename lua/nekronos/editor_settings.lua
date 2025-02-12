local command = vim.cmd
command('set undofile'); 		-- Undofiles for after session undoing
command('set number')			-- Absolute numbering
command('set nowrap')			-- No text wrapping
command('set colorcolumn=120')		-- Max character column
command('set tabstop=4')		-- Tabs are visualized as 4 spaces
command('set shiftwidth=4')		-- >> Inserts 4 spaces
command('set expandtab')		-- Tabs insert spaces
command('colorscheme gruvbox')		-- Change colorscheme

local diagnostic = vim.diagnostic
diagnostic.config({
  virtual_text = false, 		-- Disable LSP diagnostics
})


