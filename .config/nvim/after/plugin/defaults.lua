local api = vim.api
local g = vim.g
local opt = vim.opt

-- Remap leader and local leader to <Space>
api.nvim_set_keymap("", "<Space>", "<Nop>", {noremap=true, silent=true})
g.mapleader = " "
g.maplocalleader="\\"

opt.termguicolors = true -- enable colors in terminal
opt.hlsearch = true -- turn off w/esc
opt.number = true
opt.relativenumber = true
opt.mouse = "a"  -- enable mouse mode
opt.breakindent = true -- keep indented to block when wrapping
opt.ignorecase = true  -- case-insensitive search unless...
opt.smartcase = true  -- ... I deliberately put in uppercases
opt.smartindent = true
opt.timeoutlen = 300 -- time in ms to wait for a mapped sequence
opt.colorcolumn = "80"
opt.wrap = false
opt.scrolloff = 10
opt.sidescrolloff = 10
opt.fileencoding = "utf-8"
opt.swapfile = false
opt.cursorline = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.softtabstop = 2
opt.expandtab = true
opt.textwidth = 79  -- Autobreak up lines when they hit 80 columns
opt.showtabline = 2 -- show tabs



-- Window splitting
opt.splitright = true
opt.splitbelow = true



-- highlight on yank
vim.cmd [[
	augroup YankHighlight
	    autocmd!
	    autocmd TextYankPost * silent! lua vim.highlight.on_yank()
	augroup end
]]


