-- This file is here for posterity
-- Rationale:
-- Didn't want to require every config file as plugins were added.
-- A function was created in core.utils to auto-require everything
-- in the configs file ( require('tim.core.utils').setup_configs() )
-- This function is called in the top-level init.lua file

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
--]]
