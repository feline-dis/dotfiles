local file_types = require("formatter.filetypes")

local use_prettierd = {
	"javascript",
	"typescript",
	"typescriptreact",
	"json",
	"html",
	"css",
	"markdown",
}

local use_lsp_format = {
	"prisma",
	"go",
}

local build_config = function()
	local config = {}

	for _, file_type in ipairs(use_prettierd) do
		config[file_type] = file_types[file_type].prettierd
	end

	for _, file_type in ipairs(use_lsp_format) do
		config[file_type] = vim.lsp.buf.format
	end

	config["lua"] = file_types["lua"].stylua

	return config
end

-- Format on save
vim.cmd([[autocmd BufWritePre <buffer> FormwatWrite]])

require("formatter").setup({
	logging = false,
	filetype = build_config(),
})
