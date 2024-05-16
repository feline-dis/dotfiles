return {
	"folke/zen-mode.nvim",
	keys = { { "<leader>zm", "<cmd>ZenMode<CR>" } },
	opts = {
		window = {
			options = {
				number = true,
				relativenumber = true,
				signcolumn = "yes",
			},
		},
		plugins = {
			options = {
				showcmd = true,
				laststatus = 2,
			},
			gitsigns = { enabled = true },
			tmux = { enabled = true },
			alacritty = { enabled = true, font = "14" },
		},
		on_close = function()
			vim.cmd(":q")
		end,
	},
}
