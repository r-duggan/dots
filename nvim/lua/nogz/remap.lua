vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move code block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Don't replace copy buffer with dd
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Copy to system clipboard with yank
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Control c to esc
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Replace current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Compile upender
vim.keymap.set("n", "<leader>acu", "<cmd>term arduino-cli compile --fqbn P1AM-100:samd:P1AM-100_native ../Upender<CR>")
vim.keymap.set("n", "<leader>auu", "<cmd>term arduino-cli upload -p COM8 --fqbn P1AM-100:samd:P1AM-100_native ../Upender<CR>")

