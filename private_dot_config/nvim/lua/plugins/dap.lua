return {
	{
		"mfussenegger/nvim-dap",
		dependecies = {
			"leoluz/nvim-dap-go",
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
		},
		config = function()
			local dap = require("dap")

			dap.adapters.delve = {
				type = "server",
				port = "$port",
				executable = {
					command = "dlv",
					args = { "dap", "-l", "127.0.0.1:$port" },
				},
			}
		end,
	},
}
