-- For `plugins.lua` users.
return {
  'OXY2DEV/markview.nvim',
  lazy = true, -- or true if you want lazy-loading
  config = function()
    require('markview').setup {
      preview = {
        conceal = {
          cursor = false, -- don't unconceal on cursor line
          insert = true, -- keep conceal even in insert mode
        },
      },
    }
  end,
  -- For blink.cmp's completion
  -- source
  dependencies = {
    'saghen/blink.cmp',
  },
}
