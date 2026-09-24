-- lualine uses the rose-pine theme, so make sure it is loaded first
require 'custom.plugins.rose-pine-theme'

vim.pack.add { 'https://github.com/nvim-lualine/lualine.nvim' }

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'rose-pine',
    component_separators = { '|', '|' },
    section_separators = { '', '' },
    disabled_filetypes = {},
  },
  tabline = {},
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff' },
    lualine_c = { 'filename' },
    lualine_x = { 'encoding', 'fileformat', 'filetype' },
    lualine_y = { 'progress' },
    lualine_z = { 'location' },
  },
}
