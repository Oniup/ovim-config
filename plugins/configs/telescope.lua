local M = {}

local actions = require("telescope.actions")

M.opts = {
  defaults = {
    mappings = {
      i = {
        ["<C-l>"] = actions.select_vertical,
        ["<C-j>"] = actions.select_horizontal,
      },
      n = {
        ["<C-l>"] = actions.select_vertical,
        ["<C-j>"] = actions.select_horizontal,
      },
    },
  },
}

return M
