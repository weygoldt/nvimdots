-- Load the themes first so Themery can restore the last picked one on top of them
require 'custom.plugins.github-nvim-theme'
require 'custom.plugins.rose-pine-theme'

vim.pack.add { 'https://github.com/zaldih/themery.nvim' }

require('themery').setup {
  themes = { 'rose-pine-main', 'github_light_high_contrast' }, -- Your list of installed colorschemes.
  livePreview = true, -- Apply theme while picking. Default to true.
}
