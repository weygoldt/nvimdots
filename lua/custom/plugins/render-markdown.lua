-- Depends on nvim-treesitter and mini.nvim, which are set up in init.lua
vim.pack.add { 'https://github.com/MeanderingProgrammer/render-markdown.nvim' }

---@module 'render-markdown'
---@type render.md.UserConfig
require('render-markdown').setup {}
