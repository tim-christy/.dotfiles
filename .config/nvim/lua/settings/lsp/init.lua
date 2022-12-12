local status_ok, _  = pcall(require, 'lspconfig')
if not status_ok then
  print('lspconfig did not load')
  return
end

require('settings.lsp.mason')
require('settings.lsp.handlers').setup()
require('settings.lsp.null-ls')
require('settings.lsp.settings.sumneko_lua')
require('settings.lsp.settings.pyright')
require('settings.lsp.settings.jsonls')
