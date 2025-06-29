return {
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      require('github-theme').setup {
        -- ...
      }

      vim.cmd 'colorscheme github_dark_high_contrast'

      vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE
  highlight VertSplit guibg=NONE
  highlight EndOfBuffer guibg=NONE
]]
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
    end,
    opts = {
      sidebars = 'transparent',
      floats = 'transparent',
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
