local M = {}
local utils = require("core.utils")

M.kits_path = utils.correct_path(vim.env.HOME .. "/Dev/CMakeKits.json")

function M.print_current_session()
  local session = require("cmake-toools.session").load()
  vim.notify("CMake current session = " .. vim.inspect(session))
end

M.plugin = {
  "Civitasv/cmake-tools.nvim",
  ft = { "cpp", "c", "h", "hpp", "cc", "ini" },
  opts = {
    cmake_kits_path = M.kits_path,
  },
}

return M
