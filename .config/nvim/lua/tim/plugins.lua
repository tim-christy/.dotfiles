-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use 'EdenEast/nightfox.nvim'
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'
end)

