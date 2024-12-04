return {
  'VonHeikemen/fine-cmdline.nvim',
  config = function()
    require('fine-cmdline').setup({
      cmdline = { ":FineCmdline" },  -- Default cmdline command should be a table, not a string
      prompt = 'Search: ',           -- Custom prompt text
      theme = 'gruvbox',                -- Automatically select theme (can be 'dark' or 'light')
    })
    vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
  end,
}

