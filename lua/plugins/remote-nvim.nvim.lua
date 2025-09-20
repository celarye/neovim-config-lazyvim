return {
  "amitds1997/remote-nvim.nvim",
  cmd = {
    "RemoteCleanup",
    "RemoteConfigDel",
    "RemoteInfo",
    "RemoteLog",
    "RemoteStart",
    "RemoteStop",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    client_callback = function(port, workspace_config)
      local cmd = ("wezterm cli --set-window-title --pane-id $(wezterm cli spawn --new-window nvim --server localhost:%s --remote-ui) %s"):format(
        port,
        ("'Remote: %s'"):format(workspace_config.host)
      )
      vim.fn.jobstart(cmd, {
        detach = true,
        on_exit = function(job_id, exit_code, event_type)
          -- This function will be called when the job exits
          print("Client", job_id, "exited with code", exit_code, "Event type:", event_type)
        end,
      })
    end,
  },
}
