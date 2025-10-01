return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"leoluz/nvim-dap-go",
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			-- Mason-nvim-dap setup
			require("mason-nvim-dap").setup({
				ensure_installed = { "delve", "netcoredbg", "node-debug2-adapter" },
				automatic_installation = true,
			})

			-- Setup nvim-dap-go (this handles Go configurations automatically)
			require("dap-go").setup()

			-- Go adapter (existing)
			dap.adapters.delve = {
				type = "server",
				port = "$port",
				executable = {
					command = "dlv",
					args = { "dap", "-l", "127.0.0.1:$port" },
				},
			}

			-- C# adapter (netcoredbg) - check if available, fallback to manual installation
			local netcoredbg_path = vim.fn.stdpath("data") .. "/mason/bin/netcoredbg"
			if vim.fn.executable(netcoredbg_path) == 0 then
				-- Fallback to system netcoredbg if available
				netcoredbg_path = "netcoredbg"
			end

			dap.adapters.coreclr = {
				type = "executable",
				command = netcoredbg_path,
				args = { "--interpreter=vscode" },
			}

			-- Node.js adapter (node-debug2)
			dap.adapters.node2 = {
				type = "executable",
				command = "node",
				args = { vim.fn.stdpath("data") .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
			}

			-- Chrome adapter for browser debugging
			dap.adapters.chrome = {
				type = "executable",
				command = "node",
				args = { vim.fn.stdpath("data") .. "/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
			}

			-- C# Debug Configurations
			dap.configurations.cs = {
				{
					type = "coreclr",
					name = "launch - netcoredbg",
					request = "launch",
					program = function()
						return vim.fn.input("Path to dll: ", vim.fn.getcwd() .. "/bin/Debug/", "file")
					end,
				},
				{
					type = "coreclr",
					name = "attach - netcoredbg",
					request = "attach",
					processId = function()
						return require("dap.utils").pick_process()
					end,
				},
			}

			-- JavaScript/TypeScript Debug Configurations
			dap.configurations.javascript = {
				{
					name = "Launch Node.js",
					type = "node2",
					request = "launch",
					program = "${file}",
					cwd = vim.fn.getcwd(),
					sourceMaps = true,
					protocol = "inspector",
					console = "integratedTerminal",
				},
				{
					name = "Attach to Node.js",
					type = "node2",
					request = "attach",
					processId = function()
						return require("dap.utils").pick_process()
					end,
				},
			}

			-- TypeScript uses same configuration as JavaScript
			dap.configurations.typescript = dap.configurations.javascript

			-- React/Browser Debug Configuration
			dap.configurations.javascriptreact = {
				{
					type = "chrome",
					request = "attach",
					name = "Attach to Chrome",
					port = 9222,
					webRoot = "${workspaceFolder}",
					sourceMaps = true,
				},
			}

			dap.configurations.typescriptreact = dap.configurations.javascriptreact

			-- Setup nvim-dap-ui
			dapui.setup({
				layouts = {
					{
						elements = {
							{ id = "scopes", size = 0.25 },
							{ id = "breakpoints", size = 0.25 },
							{ id = "stacks", size = 0.25 },
							{ id = "watches", size = 0.25 },
						},
						position = "left",
						size = 40,
					},
					{
						elements = {
							{ id = "repl", size = 0.5 },
							{ id = "console", size = 0.5 },
						},
						position = "bottom",
						size = 10,
					},
				},
			})

			-- Auto-open/close dapui
			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
		end,
	},
}
