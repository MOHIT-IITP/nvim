return {
    { 'm4xshen/autoclose.nvim',
      lazy = false,
      priority = 1000,
      config = function()
        require("autoclose").setup({
            options = {
                disabled_filetypes = { "text", "markdown" }, -- adjust as needed
                auto_indent = true,
            },
        })
      end,
    },
}
