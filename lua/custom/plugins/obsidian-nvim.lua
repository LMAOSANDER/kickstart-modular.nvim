local home = vim.fn.expand '~'
local vault = vim.fs.joinpath(home, 'Documents', 'vaults')
local note_id_func = function(title)
  -- Create note IDs in a Zettelkasten format with a timestamp and a suffix.
  -- In this case a note with the title 'My new note' will be given an ID that looks
  -- like '1657296016-my-new-note', and therefore the file name '1657296016-my-new-note.md'
  local suffix = ''
  if title ~= nil then
    -- If title is given, transform it into valid file name.
    suffix = title:gsub(' ', '-'):gsub('[^A-Za-z0-9-]', ''):lower()
  else
    -- If title is nil, just add 4 random uppercase letters to the suffix.
    for _ = 1, 4 do
      suffix = suffix .. string.char(math.random(65, 90))
    end
  end
  return tostring(os.time()) .. '-' .. suffix
end

return {
  'obsidian-nvim/obsidian.nvim',
  version = '*',
  event = {
    'BufReadPre ' .. vault .. '/*.md',
    'BufNewFile ' .. vault .. '/*.md',
  },
  opts = {
    workspaces = {
      { name = 'personal', path = vault .. '/personal' },
      { name = 'work', path = vault .. '/work' },
      { name = 'education', path = vault .. '/education' },
    },
    note_id_func = note_id_func,
    --    note_path_func = function(spec)
    --      -- This is equivalent to the default behavior. (is it though?)
    --      local path = spec.dir / tostring(spec.title)
    --      return path:with_suffix '.md'
    --    end,
  },
}
