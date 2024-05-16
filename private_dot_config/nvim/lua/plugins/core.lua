return {
	{ "windwp/nvim-autopairs", lazy = false },
	{ "windwp/nvim-ts-autotag", lazy = false },
	{ "folke/trouble.nvim" },
	{ "folke/todo-comments.nvim" },
	{ "nvim-treesitter/nvim-treesitter-context" },
	{ "github/copilot.vim" },
	{ "jose-elias-alvarez/typescript.nvim" },
	{ "stevearc/dressing.nvim" },
	{ "prisma/vim-prisma" },
	{ "j-hui/fidget.nvim", tag = "v1.0.0", opts = {} },
	{ "folke/todo-comments.nvim", opts = {} },
	{
		dir = "/home/feline-dis/develop/nvim-plugins/test.nvim",
		config = function()
			require("test").setup()
		end,
	},
	{
		"mbbill/undotree",
		cmd = "UndotreeToggle",
		keys = {
			{ "<leader>u", "<cmd>UndotreeToggle<CR><cmd>UndotreeFocus<CR>", desc = "Toggle Undotree" },
		},
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},

	-- Praise tpope
	{ "tpope/vim-commentary" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-fugitive" },
}
