return {
  "folke/snacks.nvim",
  opts = {
    -- Show hidden files in Snacks explorer, files, and grep
    picker = {
      sources = {
        explorer = {
          hidden = true,
        },
        files = {
          hidden = true,
        },
        grep = {
          hidden = true,
        },
      },
    },
  },
}
