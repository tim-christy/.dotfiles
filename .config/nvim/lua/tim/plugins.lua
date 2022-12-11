-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Bootstrap packer if it's not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    print('Packer not installed. Installing now...')
    fn.system({
      'git',
      'clone', 
      '--depth',
      '1', 
      'https://github.com/wbthomason/packer.nvim',
      install_path,
    })
    vim.cmd [[packadd packer.nvim]]
    print('Installation complete. Quit and reopen neovim')
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Packer popup window rather than vertical split default
compiled_path = vim.fn.stdpath('config') .. 'plugin/packer_compiled.lua'
packer = require('packer')
packer.init {
  display = {
    open_fn = function()
      return require('packer.util').float {border = 'rounded'}
    end
  },
  compiled_path = compiled_path,
  git = {
    clone_timeout = 300,
  },
  working_sym = '勒', -- The symbol for a plugin being installed/updated
  error_sym = '✗', -- The symbol for a plugin with an error in installation/updating
  done_sym = '✓', -- The symbol for a plugin which has completed installation/updating
}


-- Auto compile packer after saving
local packer_group = vim.api.nvim_create_augroup('packer', {clear = true})
vim.api.nvim_create_autocmd({'BufWritePost'}, {
  pattern = 'plugins.lua',
  group = packer_group,
  callback = function()
    dofile(vim.fn.expand('%'))  -- dofile reloads this script (%)
    vim.cmd[[PackerSync]]
  end,
})

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'
  -- colorschemes
  use 'EdenEast/nightfox.nvim'
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/everforest'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'  -- next generation of nvim-lsp-installer
  use 'williamboman/mason-lspconfig.nvim'  -- recommended install for above
  use 'jose-elias-alvarez/null-ls.nvim'  -- for formatters and linters
  use 'RRethy/vim-illuminate'

  -- Cmp 
  use 'hrsh7th/nvim-cmp'  -- The completion plugin
  use 'hrsh7th/cmp-buffer'  -- buffer completions
  use 'hrsh7th/cmp-path'  -- path completions
	use 'saadparwaiz1/cmp_luasnip'  -- snippet completions
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-nvim-lua'

	-- Snippets
  use 'L3MON4D3/LuaSnip'  --snippet engine
  use 'rafamadriz/friendly-snippets'  -- a bunch of snippets to use
  

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
