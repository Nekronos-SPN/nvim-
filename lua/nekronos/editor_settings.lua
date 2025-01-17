local command = vim.cmd
command('set undofile'); 		-- Undofiles for after session undoing
command('set number')			-- Absolute numbering
command('set nowrap')			-- No text wrapping
command('colorscheme gruvbox')		-- Change colorscheme

local diagnostic = vim.diagnostic
diagnostic.config({
  virtual_text = false, 		-- Disable LSP diagnostics
})


