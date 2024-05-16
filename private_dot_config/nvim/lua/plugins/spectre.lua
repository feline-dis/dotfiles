return {
	"nvim-pack/nvim-spectre",
	config = function()
		require("spectre").setup()
		vim.keymap.set(
			"n",
			"<leader>S",
			"<cmd>lua require('spectre').open()<CR>",
			{ noremap = true, desc = "Toggle Spectre" }
		)

		vim.keymap.set(
			"n",
			"<leader>sw",
			"<cmd>lua require('spectre').open_visual({select_word = true})<CR>",
			{ noremap = true, desc = "Search current word" }
		)

		vim.keymap.set(
			"v",
			"<leader>sw",
			":lua require('spectre').open_visual()<CR>",
			{ noremap = true, desc = "Search current word" }
		)

		vim.keymap.set(
			"n",
			"<leader>sp",
			"<cmd>lua require('spectre').open_file_search()<CR>",
			{ noremap = true, desc = "Search current file" }
		)

		vim.keymap.set(
			"v",
			"<leader>sp",
			'<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
			{ noremap = true, desc = "Search current word" }
		)
	end,
}
