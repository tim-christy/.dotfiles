-- Function that will auto-require all plugin config files
local function setup_configs()

  -- Get the location of all the .lua files in configs
  local config_files = '~/.config/nvim/lua/tim/plugins/configs/*.lua'

  -- glob expands *.lua to all files there. Returns a \n separated string
  -- vim.split breaks up that string on \n and puts the elements into a table
  local paths = vim.split(vim.fn.glob(config_files), '\n')

  -- We then iterate through each string in this table
  for _, path in ipairs(paths) do

    -- Split the individual string along the /
    local path_split = vim.fn.split(path, '/')

    -- Get the last element from the path split table (i.e. the file name)
    -- and remove .lua from the end of it
    local file = string.gsub(path_split[#path_split], '%.lua?$', '')

    -- Don't require the init file - which calls this function
    if file ~= 'init' then
      -- Require all the file
      require('tim.plugins.configs.' .. file)
    end
  end

  -- Don't forget LSP
  require('tim.plugins.configs.lsp')
end

return {
  setup_configs = setup_configs
}
