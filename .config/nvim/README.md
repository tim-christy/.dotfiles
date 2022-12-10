Some notes to self:

Your config files are in ~/.config/nvim i.e. $XDG_CONFIG_HOME(/nvim)?
In this folder your directory structure looks like this:

- after
    - ftplugin
        - lua.lua
    - plugin
        - color.lua
        - defaults.lua
        - keymaps.lua

- init.lua

- lua
    - tim
        - config
        - plugins.lua


nvim will also create a directory here called plugin with a packer_compiled.lua
file in it. No need to worry about that.

When neovim opens up it will automatically source the init.lua file as well as
any lua files found in after/ftplugin and after/plugin.

In order to source anything in the lua folder on runtime, you need to require
it in the init.lua file.

after/ftplugin
    Meant to host buffer-specific settings. Depends on filetype.
    Use the lua.lua file to set stuff. Not really sure how I'd use this yet.
    I don't have any use-cases.

after/plugin
    This is where you can set your colorscheme, options, keymaps, etc.
    Things that you would normally set in plain vim alone.

init.lua
    The init.lua file. It's the map to anything you want to source that doesn't
    automatically get sourced.

lua/tim/plugins.lua
    This is where you install plugins from packer

lua/tim/plugins/config/
    This is where you configure those plugins
    


The data directory is under $XDG_DATA_HOME or ~/.local/share/
In the lua/plugins.lua file we specified the installation path of packer.nvim
to be under ~/.local/share/nvim/site/pack/packer/start

Plugins under the start folder are loaded automatically whereas plugins under
the opt folder are loaded optionally (h: packadd).


