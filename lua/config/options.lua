-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)

-- Leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Editor
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.colorcolumn = "120"
vim.opt.winborder = "rounded"
vim.opt.scrolloff = 16
vim.opt.wrap = false
vim.opt.showmode = false
vim.opt.termguicolors = true
vim.opt.list = true

-- Indentation
vim.opt.shiftwidth = 4

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Undo
vim.opt.undofile = true
vim.opt.swapfile = false

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true
