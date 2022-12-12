local keymap = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}
-- local expr_opts = {noremap = true, silent = true}

-- jk normal mode
keymap('i', 'jk', '<esc>', opts)
keymap('v', 'jk', '<esc>', opts)
keymap('t', 'jk', '<c-\\><c-n>', opts)


-- Center search results
keymap('n', 'n', 'nzz', opts)
keymap('n', 'N', 'Nzz', opts)


-- Better indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)


-- Paste over currently selected text without yanking it - i.e. you can paste repeatedly now
keymap('v', 'p', "'_dP", opts)

-- Switch buffers
keymap('n', '<S-h>', '<cmd>bprevious<cr>', opts)
keymap('n', '<S-l>', '<cmd>bnext<cr>', opts)
keymap('n', '<S-x>', '<cmd>bdelete<cr>', opts)
keymap('n', '<S-m>', '<cmd>tab split<cr>', opts)
keymap('n', '<S-b>', '<cmd>ball<cr>', opts)

-- Switch Windows
keymap('n', '<c-h>', '<c-w>h', opts)
keymap('n', '<c-j>', '<c-w>j', opts)
keymap('n', '<c-k>', '<c-w>k', opts)
keymap('n', '<c-l>', '<c-w>l', opts)

-- open vertical split
keymap('n', '<leader>v', '<cmd>vs | bnext<cr>', opts)
-- horizontal split
keymap('n', '<leader>s', '<cmd>sp | bnext<cr>', opts)

-- From horizontal split to vertical
keymap('n', '<S-v>', '<c-w>t<c-w>H', opts)
keymap('n', '<S-s>', '<c-w>t<c-w>K', opts)


-- Open terminal in horizontal split
keymap('n', '<leader>ts', '<cmd>sp | term<cr>i', opts)
keymap('n', '<leader>tv', '<cmd>vs | term<cr>i', opts)

-- Cancel search highlighting
keymap('n', '<esc>', '<cmd>nohl<bar><cr><cmd>echo<cr>', opts)

-- Remove highlighting
keymap('n', '<leader>hl', '<cmd>nohl<cr>', opts)

-- Resizing panes
keymap('n', '<left>', '<cmd>vertical resize +1<cr>', opts)
keymap('n', '<right>', '<cmd>vertical resize -1<cr>', opts)
keymap('n', '<up>', '<cmd>resize -1<cr>', opts)
keymap('n', '<down>', '<cmd>resize +1<cr>', opts)

-- Run a live server
keymap('n', '<leader>rls', '<cmd>term live-server %<cr><cmd>bp<cr>', opts)

-- Re-load file
keymap('n', '<leader>sf', '<cmd>luafile %<cr>', opts)

-- Telescope
keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)

-- NvimTree
keymap('n', '<leader>nvt', '<cmd>NvimTreeToggle<cr><cmd>NvimTreeRefresh<cr>', opts)
