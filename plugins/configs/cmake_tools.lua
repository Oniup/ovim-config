local M = {}

local u = require("core.utils")

M.opts = {
    cmake_regenerate_on_save = true,
    cmake_build_directory = "bin/${variant:buildType}",
    cmake_generate_options = { "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },

    cmake_soft_link_compile_commands = true,
    cmake_compile_commands_from_lsp = true,
    cmake_kits_path = vim.fn.getenv("HOME") .. "/CMakeKits.json",
    cmake_notifications = {
        spinner = u.ui.icons.spinner,
        refresh_rate_ms = 200,
    },
}

return M
