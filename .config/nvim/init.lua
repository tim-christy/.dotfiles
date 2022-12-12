-- Utils - needs to be required first
-- Contains a function that auto-requires everything in the configs file
require('tim.core.utils').setup_configs()

-- Import plugins file (i.e. packer)
require('tim.core')

-- Configs for the plugins
require('tim.plugins') 

