-- In your Neovim configuration file (e.g., init.lua)
return {
  {
    "echasnovski/mini.map",
    lazy = true,
    cmd = { "Minimap", "MinimapClose", "MinimapToggle", "MinimapRefresh", "MinimapUpdateHighlight" },
    config = function()
      -- Highlight integrations (none by default)
      vim.g.minimap_integrations = nil

      -- Symbols used to display data
      vim.g.minimap_symbols = {
        encode = nil,  -- Default: solid blocks with 3x2 resolution
        scroll_line = '█',
        scroll_view = '┃',
      }

      -- Window options
      vim.g.minimap_window = {
        focusable = false,
        side = 'right',
        show_integration_count = true,
        width = 10,
        winblend = 25,
        zindex = 10,
      }
    end,
  },
}
