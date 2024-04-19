return {
  { 'savq/melange-nvim' },
  {
    'ellisonleao/gruvbox.nvim',
    priority = 1000,
    opts = {
      terminal_colors = true, -- add neovim terminal colors
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = true,
        emphasis = true,
        comments = true,
        operators = false,
        folds = true,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = 'hard', -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {
        SignColumn = { bg = '#282828' },
        ['@punctuation.bracket'] = { fg = '#E4D4AD' },
        ['@punctuation.special'] = { fg = '#E4D4AD' },
        ['@punctuation'] = { fg = '#E4D4AD' },
        ['@symbol'] = { fg = '#E4D4AD' },
        ['@operator'] = { fg = '#E4D4AD' },
      },
      dim_inactive = false,
      transparent_mode = true,
    },
    config = function()
      vim.cmd 'highlight clear SignColumn'
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    opts = {
      {
        variant = 'auto', -- auto, main, moon, or dawn
        dark_variant = 'main', -- main, moon, or dawn
        dim_inactive_windows = false,
        extend_background_behind_borders = true,

        enable = {
          terminal = true,
          legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
          migrations = true, -- Handle deprecated options automatically
        },

        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
      },
    },
  },
}
