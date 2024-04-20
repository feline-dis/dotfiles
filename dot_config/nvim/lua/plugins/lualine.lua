return {
	"nvim-lualine/lualine.nvim",
	requires = { "kyazdani42/nvim-web-devicons", opt = true },
	lazy = false,
	opts = {
		options = {
			theme = "iceberg_dark",
			component_separators = { right = "󰄾", left = "󰄾" },
			section_separators = { right = " 󰄼 ", left = " 󰄼 " },
		},
	},
}
