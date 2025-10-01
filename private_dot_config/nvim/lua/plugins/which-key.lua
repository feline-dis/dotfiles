return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 300
	end,
	config = function()
		local wk = require("which-key")
		wk.add({
			{ "<leader>f", group = "file" },
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find File" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Grep" },
			{ "<leader>s", group = "splits" },
			{ "<leader>sh", "<cmd>sp<cr>", desc = "Horizontal Split" },
			{ "<leader>sv", "<cmd>vs<cr>", desc = "Vertical Split" },
			{ "<leader>v", group = "view actions" },
			{ "<leader>d", group = "debug" },
			{ "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
			{ "<leader>dB", function() require("dap").set_breakpoint() end, desc = "Set Conditional Breakpoint" },
			{ "<leader>dr", function() require("dap").repl.open() end, desc = "Open REPL" },
			{ "<leader>du", function() require("dapui").toggle() end, desc = "Toggle DAP UI" },
			{ "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
			{ "<F5>", function() require("dap").continue() end, desc = "Debug: Continue" },
			{ "<F10>", function() require("dap").step_over() end, desc = "Debug: Step Over" },
			{ "<F11>", function() require("dap").step_into() end, desc = "Debug: Step Into" },
			{ "<F12>", function() require("dap").step_out() end, desc = "Debug: Step Out" },
		})
	end,
}
