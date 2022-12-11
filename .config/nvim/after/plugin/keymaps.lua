local keymap = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
local expr_opts = {noremap = true, silent = true}

-- jk normal mode
keymap("i", "jk", "<ESC>", default_opts)
keymap("v", "jk", "<ESC>", default_opts)
keymap("t", "jk", "<C-\\><C-n>", default_opts) -- terminal


-- Center search results
keymap("n", "n", "nzz", default_opts)
keymap("n", "N", "Nzz", default_opts)


-- Better indenting
keymap("v", "<", "<gv", default_opts)
keymap("v", ">", ">gv", default_opts)


-- Paste over currently selected text without yanking it - i.e. you can paste repeatedly now
keymap("v", "p", '"_dP', default_opts)

-- Switch buffers
keymap("n", "<S-h>", "<CMD>bprevious<CR>", default_opts)
keymap("n", "<S-l>", "<CMD>bnext<CR>", default_opts)

-- Switch Windows
keymap("n", "<C-h>", "<C-w>h", default_opts)
keymap("n", "<C-j>", "<C-w>j", default_opts)
keymap("n", "<C-k>", "<C-w>k", default_opts)
keymap("n", "<C-l>", "<C-w>l", default_opts)

-- Cancel search highlighting
keymap("n", "<ESC>", "<CMD>nohl<Bar><CMD>echo<CR>", default_opts)

-- Resizing panes
keymap("n", "<Left>", "<CMD>vertical resize +1<CR>", default_opts)
keymap("n", "<Right>", "<CMD>vertical resize -1<CR>", default_opts)
keymap("n", "<Up>", "<CMD>resize -1<CR>", default_opts)
keymap("n", "<Down>", "<CMD>resize +1<CR>", default_opts)

-- Run a live server
keymap('n', '<leader>rls', '<cmd>term live-server %<cr><cmd>bp<cr>', default_opts)
-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
