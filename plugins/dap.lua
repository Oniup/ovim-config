local M = {}

M.plugin = {
  opts = {
    dapui = {
      layouts = {
        {
          size = 40,
          position = "left",
          elements = {
            { id = "scopes",      size = 0.25, },
            { id = "breakpoints", size = 0.25, },
            { id = "stacks",      size = 0.25, },
            { id = "watches",     size = 0.25, },
          },
        },
        {
          size = 10,
          position = "bottom",
          elements = {
            -- { id = "repl",    size = 0.18, },
            { id = "console", size = 1.0, },
          },
        }
      },
    }
  }
}

return M
