-- Plugin specification for CodeCompanion, an AI assistant for Neovim
return {
	"olimorris/codecompanion.nvim", -- Main plugin repository
	dependencies = {
		"nvim-lua/plenary.nvim", -- Lua utility functions library
		"nvim-treesitter/nvim-treesitter", -- For syntax awareness
		"echasnovski/mini.diff", -- Handles diff functionality
	},
	config = function()
		require("codecompanion").setup({
			-- Enable debug level logging for troubleshooting
			log_level = "DEBUG",
			adapters = {
				anthropic = function()
					return require("codecompanion.adapters").extend("anthropic", {
						-- Set the API key for the Anthropic Claude API
						env = {},
					})
				end,
				deepseek = function()
					return require("codecompanion.adapters").extend("deepseek", {
						-- Set the API key for the DeepSeek API
						env = {},
					})
				end,
			},
			strategies = {
				chat = {
					adapter = "anthropic",
					keymaps = {
						debug = {
							modes = { n = "<leader>cd" }, -- Debug chat in normal mode
						},
						close = {
							modes = { n = "<Esc>", i = "<Esc>" }, -- Close chat in normal and insert modes
						},
					},
				},
			},
			display = {
				action_palette = {
					width = 95, -- Width of the action palette window
					height = 20, -- Height of the action palette window
					prompt = "Prompt ", -- Prompt text for interactive LLM calls
					provider = "telescope", -- Use telescope for UI selection
					opts = {
						show_default_actions = true, -- Include built-in actions in the palette
						show_default_prompt_library = true, -- Include default prompts in the palette
					},
				},
				diff = {
					provider = "mini_diff", -- Use mini.diff for showing code differences
				},
			},
		})

		vim.keymap.set("n", "<leader>cc", ":CodeCompanionChat<CR>", { noremap = true, silent = true })
		vim.keymap.set("n", "<leader>ct", ":CodeCompanionChat Toggle<CR>", { noremap = true, silent = true })
	end,
}
