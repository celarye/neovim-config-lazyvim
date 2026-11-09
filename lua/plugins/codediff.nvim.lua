return {
  "esmuellert/codediff.nvim",
  cmd = "CodeDiff",
  config = function()
    require("codediff").setup({
      diff = {
        hide_merge_artifacts = true,
      },
    })
  end,
}
