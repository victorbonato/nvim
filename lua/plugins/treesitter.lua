return {
  {
    "https://github.com/nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      -- Add nvim-ts-autotag
      { "windwp/nvim-ts-autotag" },
    },
    opts = {
      ensure_installed = {
        "lua",
        "bash",
        "css",
        "gitignore",
        "html",
        "http",
        "javascript",
        "json",
        "jsonc",
        "nim",
        "prisma",
        "rust",
        "go",
        "scss",
        "sql",
        "svelte",
        "toml",
        "tsx",
        "typescript",
        "yaml",
      },

      query_linter = {
        enable = true,
        use_virtual_text = true,
        lint_events = { "BufWrite", "CursorHold" },
      },

      autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
      },
    },
  },
}
