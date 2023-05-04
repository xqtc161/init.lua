require("lazy").setup({
	"rebelot/kanagawa.nvim",  
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = true
    },
	{
		"andweeb/presence.nvim",
		lazy = false,
	},
	{"nvim-telescope/telescope.nvim"},
	{"nvim-lua/plenary.nvim"},
	{"nvim-treesitter/nvim-treesitter"},
	{"nvim-treesitter/playground"},
	{"mbbill/undotree"},
	{"tpope/vim-fugitive"},
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{                                      -- Optional
			'williamboman/mason.nvim',
			build = function()
				pcall(vim.cmd, 'MasonUpdate')
			end,
			},
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},     -- Required
			{'hrsh7th/cmp-nvim-lsp'}, -- Required
			{'L3MON4D3/LuaSnip'},     -- Required
		}
	},
})
