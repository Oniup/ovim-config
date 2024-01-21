local M = {}

local actions = require("telescope.actions")

M.opts = {
    defaults = {
        layout_strategy = "horizontal",
        file_ignore_patterns = {
            -- Folders
            "^node_modules/",
            "^zig-cache/",
            "^zig-out/",

            -- Files
            "%.png",
            "%.jpg",
            "%.bitmap",
            "%.zip",
        },
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
