local M = {}

M.opts = {
    ensure_installed = vim.list_extend({
        "clangd",
        "codelldb",
        "cmake-language-server",
    }, require("plugins.configs.mason").opts.ensure_installed),
}

return M
