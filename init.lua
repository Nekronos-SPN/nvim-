-- Start lazy plugins
require("nekronos.lazy")

-- Set undofiles
vim.cmd("set undofile");

-- Set tabulations correctly
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
 
-- Set numbering
vim.cmd("set number")

-- Keybindings
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', {noremap=true}) -- Set terminal escape
vim.api.nvim_set_keymap('n', '<C-F>', '<cmd>NvimTreeToggle<cr>', {noremap=true}) -- Toggle NvimTree
vim.api.nvim_set_keymap('n', '<C-h>', 'gt', {noremap=true}) -- Next tab
vim.api.nvim_set_keymap('n', '<C-l>', 'gt', {noremap=true}) -- Next tab
vim.api.nvim_set_keymap('n', '<C-N>', '<cmd>tabe<cr>', {noremap=true}) -- Create new tab
local opts = {
    mode = "n", -- NORMAL mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = true, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = true, -- use `nowait` when creating keymaps
}

local mappings = {

    ["k"] = { "<cmd>bdelete<CR>", "Kill Buffer" },  -- Close current file
    ["p"] = { "<cmd>Lazy<CR>", "Plugin Manager" }, -- Invoking plugin manager
    ["q"] = { "<cmd>wqall!<CR>", "Quit" }, -- Quit Neovim after saving the file
    ["w"] = { "<cmd>w!<CR>", "Save" }, -- Save current file

    -- Added this line from the initial file
    ["e"] = { "<cmd>NvimTreeToggle<cr>", "Explorer" }, -- File explorer

}


-- Set terminal close on exit
vim.api.nvim_create_autocmd("TermClose", {
    callback = function()
       vim.cmd("bdelete")
    end
})

-- LSP configuration
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
local servers = {
	bashls = {},
    clangd = {},
    jsonls = {},
    lemminx = {},
    pyright = {},
	lua_ls = {
		Lua = {
			workspace = { checkThirdParty = false },
			telemetry = { enable = false },
			diagnostics = {
				globals = { "vim" },
			},
		},
	}
}

-- Mason configuration

require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")
mason_lspconfig.setup({
	ensure_installed = vim.tbl_keys(servers),
})

mason_lspconfig.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
			settings = servers[server_name],
		})
	end,
})

-- Autocompletion setup
local cmp = require 'cmp'
local luasnip = require 'luasnip'
cmp.setup {
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        },
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    }),
    sources = {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    },
}
