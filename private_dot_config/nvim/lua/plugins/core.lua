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
	{ "rcarriga/nvim-notify" },
	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = { "markdown", "codecompanion" },
	},
	{
		"j-hui/fidget.nvim",
		opts = {
			notification = {
				redirect = function(msg, level, opts)
					if opts and opts.on_open then
						return require("fidget.integration.nvim-notify").delegate(msg, level, opts)
					end
				end,
			},
		},
	},
	{ "folke/todo-comments.nvim" },
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
	{ "noib3/nvim-oxi" },

	-- Praise tpope
	{ "tpope/vim-commentary" },
	{ "tpope/vim-surround" },
	{ "tpope/vim-fugitive" },
}
