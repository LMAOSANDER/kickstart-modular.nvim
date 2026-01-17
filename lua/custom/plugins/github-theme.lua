return {
  {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup {
        options = {
          terminal_colors = true,
          styles = {
            sidebars = 'transparent',
            floats = 'transparent',
          },
        },
      }
      vim.cmd 'colorscheme github_dark_high_contrast'
    end,
  },
}

--- vim: ts=2 sts=2 sw=2 et
