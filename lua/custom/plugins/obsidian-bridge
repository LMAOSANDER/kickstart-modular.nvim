-- default settings
local bridge_settings = {
  obsidian_server_address = 'https://127.0.0.1:27124', --'https://localhost:27124',
  scroll_sync = false, -- See "Sync of buffer scrolling" section below
  --cert_path = '~\\obsidian-local-rest-api.crt', -- See "SSL configuration" section below
  cert_path = 'C:\\Users\\alexa\\Documents\\obsidian-local-rest-api.crt',
  warnings = true, -- Show misconfiguration warnings
  picker = 'telescope', -- Picker to use with ObsidianBridgePickCommand ("telescope" | "fzf_lua")
  api_key = os.getenv 'OBSIDIAN_REST_API_KEY',
}

return {
  'oflisback/obsidian-bridge.nvim',
  opts = bridge_settings,
  event = {
    'BufReadPre *.md',
    'BufNewFile *.md',
  },
  lazy = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
}
