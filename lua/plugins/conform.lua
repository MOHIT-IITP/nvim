return {
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        format_on_save = true,
        formatters_by_ft = {
          lua = { "stylua" },
          python = { "black" },
          cpp = { "clang_format" },
          javascript = { "prettier" },
        },
      })
    end,
  },
}

