local M = {}

local u = require("core.utils")

local build_dir = "bin/${variant:buildType}"
if vim.fn.has("win32") then
  build_dir = string.gsub(build_dir, "/", "\\")
end

M.opts = {
  cmake_regenerate_on_save = true,
  cmake_build_directory = build_dir,
  cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
  cmake_kits_path = vim.fn.getenv("HOME") .. "/CMakeKits.json",
  cmake_notifications = {
    spinner = u.ui.icons.spinner,
    refresh_rate_ms = 200,
  },
}

return M
