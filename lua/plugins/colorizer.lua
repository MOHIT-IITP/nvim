return {
  "NvChad/nvim-colorizer.lua",
  opts = {
    user_default_options = {
      mode = "background", 
      tailwind = true,    
    },
  },
  event = "BufReadPost", -- load on buffer read
  config = function(_, opts)
    require("colorizer").setup(nil, opts)
  end,
}
