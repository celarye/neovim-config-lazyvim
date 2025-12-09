return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_a = {
          {
            function()
              return require("tmux-status").tmux_render_format("window_index")
            end,
            cond = function()
              return require("tmux-status").show() and vim.fn.argc(-1) == 0
            end,
          },
          {
            "mode",
          },
        },
        lualine_z = {
          {
            function()
              return require("tmux-status").tmux_render_format("window_name")
            end,
            cond = function()
              return require("tmux-status").show() and vim.fn.argc(-1) == 0
            end,
          },
          {
            function()
              return require("tmux-status").tmux_render_format("session_name")
            end,
            cond = function()
              return require("tmux-status").show() and vim.fn.argc(-1) == 0
            end,
          },
        },
      },
    },
  },
}
