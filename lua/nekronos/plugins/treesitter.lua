return {
	'nvim-treesitter/nvim-treesitter',
	tag='v0.9.0', -- This is an Ericsson's thing
	config = function()
		require('nvim-treesitter.configs').setup{
			ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'query' },
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
		}
	end,
}
