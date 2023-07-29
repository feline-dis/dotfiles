return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	lazy = false,
	keys = {
		{ "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", desc = "Buffer Goto 1" },
		{ "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", desc = "Buffer Goto 2" },
		{ "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", desc = "Buffer Goto 3" },
		{ "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", desc = "Buffer Goto 4" },
		{ "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", desc = "Buffer Goto 5" },
		{ "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", desc = "Buffer Goto 6" },
		{ "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", desc = "Buffer Goto 7" },
		{ "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", desc = "Buffer Goto 8" },
		{ "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", desc = "Buffer Goto 9" },
		{ "<leader>0", "<cmd>BufferLineGoToBuffer 10<cr>", desc = "Buffer Goto 10" },
	},
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count)
				return "(" .. count .. ")"
			end,
			buffer_close_icon = "󰅖",
			modified_icon = "●",
			close_icon = "",
			left_trunc_marker = "",
			right_trunc_marker = "",
			show_buffer_close_icons = true,
			show_close_icon = true,
			separator_style = "thin",
			always_show_bufferline = true,
			sort_by = "id",
			close_command = "bdelete! %d", -- can be a string | function, | false see "Mouse actions"
			right_mouse_command = "bdelete! %d", -- can be a string | function | false, see "Mouse actions"
			left_mouse_command = "buffer %d", -- can be a string | function, | false see "Mouse actions"
		},
	},
}
