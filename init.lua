-- Start lazy plugins
require("nekronos.lazy")

-- Set undofiles
vim.cmd("set undofile");

-- Set tabulations correctly
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
 
-- Set numbering
vim.cmd("set number")

-- Set terminal close on exit
vim.api.nvim_create_autocmd("TermClose", {
    callback = function()
       vim.cmd("bdelete")
    end
})
