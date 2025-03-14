vim.g.mapleader = " "

-- Disable arrow keys (git gud scrub)
vim.keymap.set("n", "<Up>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Down>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Left>", "<Nop>", { noremap = true })
vim.keymap.set("n", "<Right>", "<Nop>", { noremap = true })

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

-- Jump, jump, jump, jump around (but keep the cursor in the middle of the screen)
vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true })

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { noremap = true })
vim.keymap.set("n", "<leader>Y", [["+Y]], { noremap = true })

-- Move between splits
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true })

-- Resize splits
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<A-k>", ":0resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<A-j>", ":0resize +2<CR>", { noremap = true })
vim.keymap.set("n", "<A-h>", ":vertical 0resize -2<CR>", { noremap = true })
vim.keymap.set("n", "<A-l>", ":vertical 0resize +2<CR>", { noremap = true })

-- Close Split
vim.keymap.set("n", "<leader>sc", ":close<CR>", { noremap = true })

-- Create split
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })
