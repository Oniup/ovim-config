local M = {}

local actions = require("telescope.actions")

M.opts = {
    defaults = {
        layout_strategy = "horizontal",
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
        file_ignore_patterns = vim.list_extend({
            "bin",
            "vender",
            "deps",
            "dependencies",
        }, require("plugins.configs.telescope").opts.defaults.file_ignore_patterns),
    },
}

return M
