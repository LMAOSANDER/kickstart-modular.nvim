local keymaps_path = vim.fn.stdpath 'config' .. '/lua/custom/keymaps'

for _, file in ipairs(vim.fn.glob(keymaps_path .. '/*.lua', false, true)) do
  local module = file:match '.*\\(.*).lua$'
  if module ~= 'init' then
    require('custom.keymaps.' .. module)
  end
end
