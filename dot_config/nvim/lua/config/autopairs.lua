local status, autopairs = pcall(require, "nvim-autopairs")

if not status then
	print("Can't load autopairs")
	return
end

autopairs.setup({
	disable_filetype = { "TelescopePrompt" },
})
