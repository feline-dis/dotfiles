local file_types = require("formatter.filetypes")

local function build_filetypes()
	local use_prettierd = {
		"javascript",
		"typescript",
		"typescriptreact",
		"json",
		"html",
		"css",
	}

	local filetypes = {
		lua = file_types.lua.stylua,
		prisma = function()
			vim.lsp.buf.format()
		end,
		["*"] = {
			file_types.any.remove_trailing_whitespace,
		},
		go = {
			function()
				vim.lsp.buf.format()
			end,
		},
	}

	for _, lang in ipairs(use_prettierd) do
		filetypes[lang] = file_types[lang].prettierd
	end

  return filetypes
end

require("formatter").setup({
	logging = false,
	filetype = build_filetypes(),
})
