-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

-- Iterate over all Lua files in the plugins directory and load them.
-- `vim.fs.dir()` iteration order is unspecified, so sort the files to load them alphabetically.
-- Modules that depend on another one `require` it explicitly.
local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'custom', 'plugins')
local modules = {}
for file_name, type in vim.fs.dir(plugins_dir, { follow = true }) do
  if (type == 'file' or type == 'link') and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    table.insert(modules, (file_name:gsub('%.lua$', '')))
  end
end
table.sort(modules)
for _, module in ipairs(modules) do
  require('custom.plugins.' .. module)
end
