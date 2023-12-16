local M = {}
local utils = require("core.utils")

M.kits_path = utils.correct_path(vim.env.HOME .. "/Dev/CMakeKits.json")

function M.override_debug_keymap()
  local dap = require("dap")

  -- Setting the debugger directory while still allowing selecting adapter
  local required_package = utils.get_mason_package("codelldb")
  if not vim.fn.exists(required_package) then
    vim.notify(
      "codelldb is not installed. Install by running :Mason and" ..
      "install codelldb. Once installed restart",
      vim.log.levels.ERROR)
    return
  end

  local current_session = require("cmake-tools.session").load()
  vim.notify("Current session table: " .. vim.inspect(current_session), vim.log.levels.INFO)

  local executable_path = current_session.cwd .. "/" ..
      current_session.build_directory .. "/" .. current_session.build_target

  if vim.fn.has("win32") then
    executable_path = string.gsub(executable_path, "/", "\\")
  end

  vim.notify("CMake overrided dap program path: " ..
    executable_path, vim.log.levels.INFO)

  for i = 1, #dap.configurations.cpp do
    dap.configurations.cpp[i].program = executable_path
    dap.configurations.c[i].program = executable_path
  end
  for i = 1, #dap.configurations.c do
    dap.configurations.c[i].program = executable_path
  end
  dap.continue()
end

function M.print_current_session()
  local session = require("cmake-toools.session").load()
  vim.notify("CMake current session = " .. vim.inspect(session))
end

M.plugin = {
  "Civitasv/cmake-tools.nvim",
  ft = { "cpp", "c", "h", "hpp", "cc", "ini" },
  opts = {
    cmake_kits_path = M.kits_path
  },
}

return M
