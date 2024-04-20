local wk = require("which-key")

wk.register({
	f = {
		name = "file", -- optional group name
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { "<cmd>Telescope live_grep<cr>", "Grep" },
	},
	s = {
		name = "splits",
		v = { "<cmd>vs<cr>", "Vertical Split" },
		h = { "<cmd>sp<cr>", "Horizontal Split" },
	},
	v = {
		name = "view actions",
	},
}, { prefix = "<leader>" })
