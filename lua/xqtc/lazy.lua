require("lazy").setup({
	{ "rebelot/kanagawa.nvim" },
	{
		"tamton-aquib/staline.nvim",
	},
	{
		"ThePrimeagen/harpoon",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
		},
	},
	{
		"norcalli/nvim-colorizer.lua",
	},
	--{ "edluffy/hologram.nvim" },
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	{ "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
	{ "zbirenbaum/copilot.lua" },
	{
		"zbirenbaum/copilot-cmp",
	},
	{ "norcalli/nvim-colorizer.lua" },
	{
		"akinsho/toggleterm.nvim",
		version = "*",
		config = true,
	},
	--	{
	--		"andweeb/presence.nvim",
	--		lazy = false,
	--	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
	{ "nvim-telescope/telescope.nvim" },
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-treesitter/nvim-treesitter" },
	{ "nvim-treesitter/playground" },
	{ "folke/zen-mode.nvim" },
	{ "mbbill/undotree" },
	{
		"pwntester/octo.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("octo").setup()
		end,
	},
	{
		"mhartington/formatter.nvim",
		lazy = false,
	},
	{ "tpope/vim-fugitive" },
	{
		"Saecki/crates.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("crates").setup()
		end,
	},
	{
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("alpha").setup(require("xqtc.alpha-neovim").config)
		end,
	},
	{
		"VonHeikemen/lsp-zero.nvim",
		branch = "v2.x",
		dependencies = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" }, -- Required
			{ -- Optional
				"williamboman/mason.nvim",
				build = function()
					pcall(vim.cmd, "MasonUpdate")
				end,
			},
			{ "williamboman/mason-lspconfig.nvim" }, -- Optional

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" }, -- Required
			{ "hrsh7th/cmp-path" }, -- Required
			{ "hrsh7th/cmp-nvim-lsp" }, -- Required
			{ "L3MON4D3/LuaSnip" }, -- Required
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", opt = true },
	},
	{
		"nvim-neorg/neorg",
		build = ":Neorg sync-parsers",
		opts = {
			load = {
				["core.defaults"] = {}, -- Loads default behaviour
				["core.concealer"] = {
					config = {
						folds = false,
					},
				}, -- Adds pretty icons to your documents
				["core.integrations.telescope"] = {},
				["core.dirman"] = { -- Manages Neorg workspaces
					config = {
						workspaces = {
							notes = "~/notes",
							todo = "~/notes/Other/",
							math = "~/notes/Uni/Mathe/",
							ofp = "~/notes/Uni/Obj_Funkt_Programmieren/",
							networks = "~/notes/Uni/Rechnernetze/",
						},
					},
				},
				["core.completion"] = {
					config = {
						engine = "nvim-cmp",
					},
				},
				["core.summary"] = {},
			},
		},
		dependencies = { { "nvim-lua/plenary.nvim" }, { "nvim-neorg/neorg-telescope" } },
	},
	{
		"kaarmu/typst.vim",
		ft = "typst",
		lazy = false,
	},
	{
		"lukas-reineke/headlines.nvim",
		dependencies = "nvim-treesitter/nvim-treesitter",
		config = true, -- or `opts = {}`
	},
	{
		"rockerBOO/boo-colorscheme-nvim",
		config = function()
			require("boo-colorscheme").use({
				italic = false, -- toggle italics
				theme = "boo",
			})
		end,
	},
	--{
	--	"NTBBloodbath/doom-one.nvim",
	--	config = function()
	--		-- Add color to cursor
	--		vim.g.doom_one_cursor_coloring = false
	--		-- Set :terminal colors
	--		vim.g.doom_one_terminal_colors = true
	--		-- Enable italic comments
	--		vim.g.doom_one_italic_comments = false
	--		-- Enable TS support
	--		vim.g.doom_one_enable_treesitter = true
	--		-- Color whole diagnostic text or only underline
	--		vim.g.doom_one_diagnostics_text_color = false
	--		-- Enable transparent background
	--		vim.g.doom_one_transparent_background = false

	--		-- Pumblend transparency
	--		vim.g.doom_one_pumblend_enable = false
	--		vim.g.doom_one_pumblend_transparency = 20

	--		-- Plugins integration
	--		vim.g.doom_one_plugin_neorg = true
	--		vim.g.doom_one_plugin_barbar = false
	--		vim.g.doom_one_plugin_telescope = false
	--		vim.g.doom_one_plugin_neogit = true
	--		vim.g.doom_one_plugin_nvim_tree = true
	--		vim.g.doom_one_plugin_dashboard = true
	--		vim.g.doom_one_plugin_startify = true
	--		vim.g.doom_one_plugin_whichkey = true
	--		vim.g.doom_one_plugin_indent_blankline = true
	--		vim.g.doom_one_plugin_vim_illuminate = true
	--		vim.g.doom_one_plugin_lspsaga = false
	--	end,
	--},
})
