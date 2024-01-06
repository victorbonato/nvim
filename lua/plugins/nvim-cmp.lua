return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "windwp/nvim-autopairs",
      opts = {},
    },
    keys = {
      { "<CR>" },
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}
