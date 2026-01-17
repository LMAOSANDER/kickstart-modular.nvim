-- Function to apply transparency
local function set_transparency()
  vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE
    highlight VertSplit guibg=NONE
    highlight EndOfBuffer guibg=NONE
  ]]
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none' })
end

-- Function to reset highlights using GitHub Dark High Contrast background
local function reset_transparency()
  vim.cmd [[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight SignColumn guibg=NONE
    highlight VertSplit guibg=NONE
    highlight EndOfBuffer guibg=NONE
  ]]
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#0a0c10' })
  vim.api.nvim_set_hl(0, 'FloatBorder', { bg = '#0a0c10' })
end

-- Autocmd for .tex files to apply transparency
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'tex',
  callback = function()
    set_transparency()
  end,
})

-- Autocmd for all other filetypes to reset transparency (broken)
--vim.api.nvim_create_autocmd('FileType', {
--  pattern = '*',
--  callback = function(args)
--    if args.match ~= 'tex' then
--      reset_transparency()
--    end
--  end,
--})
