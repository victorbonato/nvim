return {
  "folke/flash.nvim",
  opts = {
    modes = {
      search = {
        enabled = false,
      },
    },
  },
  keys = {
    {
      "S",
      mode = { "n", "o", "v", "x" },
      false,
    },
  },
}
