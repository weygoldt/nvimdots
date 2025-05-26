return {
  'zaldih/themery.nvim',
  lazy = false,
  config = function()
    require('themery').setup {
      themes = { 'rose-pine-main', 'github_light_high_contrast' }, -- Your list of installed colorschemes.
      livePreview = true, -- Apply theme while picking. Default to true.
    }
  end,
}
