-- Auto-requires all configuration files in configs directory
-- Glob returns a string with each path separated by a new line
-- vim.split() splits the string into a table
local paths = vim.split(vim.fn.glob('~/.config/nvim/lua/tim/configs/*.lua'), '\n')

-- Get the filenames and require them
for _, path in ipairs(paths) do
  path_split = vim.fn.split(path, '/')  --path is a string path_split is a table
  file = string.gsub(path_split[#path_split], '%.lua?$', '')
  if file ~= 'init' then
    require('tim.configs.' .. file)
  end
end


--[[
-- LSP
require('tim.configs.lsp')

-- TS
require('tim.configs.treesitter')

-- NvimTree
require('tim.configs.nvim-tree')

-- Lualine
require('tim.configs.lualine')

-- Telescope
require('tim.configs.telescope')

-- Comments
require('tim.cong
--]]
