local status, autotags = pcall(require, "nvim-ts-autotag")

if not status then
  return
end

autotags.setup({
  filetypes = { "html", "javascript", "javascriptreact", "typescriptreact", "svelte", "vue" },
})
