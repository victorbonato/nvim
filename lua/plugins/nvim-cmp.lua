return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-emoji",
      "windwp/nvim-autopairs",
      opts = {},
    },
    keys = {
      {
        "<C-y>",
        function()
          require("cmp").mapping.confirm({ select = true })
        end,
      },
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      local cmp_autopairs = require("nvim-autopairs.completion.cmp")
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
      table.insert(opts.sources, { name = "emoji" })
      -- Disable ENTER completion
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<CR>"] = vim.NIL,
      })
    end,
  },
}
