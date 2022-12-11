local status_ok, _  = pcall(require, 'lspconfig')
if not status_ok then
  print('lspconfig did not load')
  return
end

require('tim.configs.lsp.mason')
require('tim.configs.lsp.handlers').setup()
require('tim.configs.lsp.null-ls')
require('tim.configs.lsp.settings.sumneko_lua')
require('tim.configs.lsp.settings.pyright')
require('tim.configs.lsp.settings.jsonls')
