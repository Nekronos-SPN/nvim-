local option = vim.cmd
option('set undofile'); 	-- Undofiles for after session undoing
option('set number')		-- Absolute numbering
option('set nowrap')		-- No text wrapping

vim.diagnostic.config({
  virtual_text = false,
})



