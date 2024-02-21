vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set clipboard=unnamedplus")
vim.cmd('nnoremap d "_d')
vim.cmd('vnoremap d "_d')
-- https://neovim.io/doc/user/options.html#%27scrolloff%27
vim.cmd("setlocal scrolloff=999")
vim.g.mapleader = " "

-- move half a page down/up
-- and center screen in line
vim.keymap.set("n", "<C-d>", "<C-d>zz", {})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {})

-- move next/previous occurrence in search
-- and center screen in the occurrence
vim.keymap.set("n", "n", "nzz", {})
vim.keymap.set("n", "N", "Nzz", {})

-- paste without losing the paste after deleting
vim.keymap.set({ "n", "v" }, "<leader>p", '"_P', {})
