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

M["cmake_tools"] = {
    n = {
        ["<C-b>"] = { "<cmd> CMakeBuild <cr>" },
    },
}

M.lsp_clangd = {
    n = {
        ["<leader>o"] = { "<cmd> ClangdSwitchSourceHeader <cr>", "Swap between header and source" },
    },
}

return M
