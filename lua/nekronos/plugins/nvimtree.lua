return {
	'nvim-tree/nvim-tree.lua', 	-- File explorer menu
	version = '*',
	lazy = false,
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	config = function()
		require('nvim-tree').setup {
			git = {
				enable = false,
			}
		}
	end,
}
