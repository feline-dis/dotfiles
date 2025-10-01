return {
	"greggh/claude-code.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim", -- Required for git operations
	},
	config = function()
		require("claude-code").setup({
			keymaps = {
				toggle = {
					normal = "<leader>ac",  -- Custom toggle key
					terminal = "<C-,>",     -- Keep default for terminal
					variants = {
						continue = "<leader>cC",
						verbose = "<leader>cV"
					}
				}
			}
		})
	end,
}
