return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	keys = {
		{ "<leader>f", group = "file" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
		{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
		{ "<leader>s", group = "splits" },
		{ "<leader>sh", "<cmd>sp<cr>", desc = "Horizontal Split" },
		{ "<leader>sv", "<cmd>vs<cr>", desc = "Vertical Split" },
		{ "<leader>v", group = "view actions" },
	},
}
