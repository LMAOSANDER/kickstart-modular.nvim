return {
  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'general'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_complete_enabled = 1
      vim.g.vimtex_complete_close_braces = 1
      vim.g.vimtex_conceal_level = 1
      vim.g.vimtex_syntax_custom_cmds_with_concealed_delims = {
        --{ name = 'prob', mathmode = 1, cchar_open = 'π(', cchar_close = ')' },
        { name = 'e', mathmode = 1, cchar_open = 'e', cchar_close = '' },
      }
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = 'latex_aux',
      }
    end,
  },
}
