return {
  "akinsho/bufferline.nvim",
  after = "catppuccin",
  event = "VeryLazy",
  opts = {
    options = {
      -- separator_style = "slant",
      show_buffer_close_icons = false,
      show_close_icon = false,
    },
  },
  config = function()
    require("bufferline").setup({
      highlights = require("catppuccin.groups.integrations.bufferline").get(),
    })
  end,
}
