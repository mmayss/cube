local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    'https://github.com/folke/lazy.nvim.git',
    '--filter=blob:none',
    '--branch=stable',
    lazypath,
  }
end

vim.opt.rtp:prepend(lazypath)


require('lazy').setup({
  {
    require('sami.plugins.mason'),
    require('sami.plugins.basic'),
    require('sami.plugins.autoformat'),
    require('sami.plugins.debug'),
    require('sami.plugins.gitsigns'),
    require('sami.plugins.noice'),
    require('sami.plugins.package-info'),
    require('sami.plugins.markdown_prev'),
    -- require('sami.plugins.neotree'),
  },
}, {})

require('sami.plugins.telescope')
require('sami.plugins.lsp')
require('sami.plugins.nvim-cmp')
require('sami.plugins.treesitter')
require('sami.plugins.nvim-lint')
require('sami.plugins.statusline')

vim.cmd("colorscheme catppuccin")
--vim.cmd("colorscheme rose-pine")
-- vim.cmd [[ colorscheme NeoSolarized ]]
