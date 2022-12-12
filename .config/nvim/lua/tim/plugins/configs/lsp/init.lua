local status_ok, _  = pcall(require, 'lspconfig')
if not status_ok then
  print('lspconfig did not load')
  return
end

require('tim.plugins.configs.lsp.mason')
require('tim.plugins.configs.lsp.handlers').setup()
require('tim.plugins.configs.lsp.null-ls')
require('tim.plugins.configs.lsp.settings.sumneko_lua')
require('tim.plugins.configs.lsp.settings.pyright')
require('tim.plugins.configs.lsp.settings.jsonls')
