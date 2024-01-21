local M = {}

M.general = {
    n = {
        ["<leader>nh"] = { "<cmd> noh <cr>", desc = "Clear highlight" },
        ["<leader>d"] = { '"_d', desc = "Delete without yanking" },
        ["<leader>c"] = { '"_c', desc = "Delete without yanking" },
    },
    x = {
        ["<leader>d"] = { '"_d', desc = "Delete without yanking" },
        ["<leader>c"] = { '"_c', desc = "Delete without yanking" },
        ["<leader>p"] = { '"_dP', desc = "Paste without yanking replaced text" },
    },
}

M.telescope = {
    n = {
        ["<leader>fi"] = {
            "<cmd> Telescope find_files no_ignore=true <cr>",
            "Find file",
        },
        ["<leader>fg"] = {
            "<cmd> Telescope live_grep no_ignore=true <cr>",
            "Live grep",
        },
    },
}

M.neogen = {
    n = {
        ["<leader>nf"] = {
            function()
                require("neogen").generate({})
            end,
            desc = "Gen comment template",
        },
    },
}

M.lsp_clangd = {
    n = {
        ["<leader>o"] = { "<cmd> ClangdSwitchSourceHeader <cr>", "Swap between header and source" },
    },
}

return M
