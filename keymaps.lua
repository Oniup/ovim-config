return {
  general = {
    i = {
      ["jk"] = { "<esc>", desc = "Esc into normal mode" },
    },
    v = {
      ["jk"] = { "<esc>", desc = "Esc into normal mode" },
    },
    n = {
      ["<leader>nh"] = { "<cmd> noh <cr>", desc = "Clear highlight" },
      ["<leader>d"] = { '"_d', desc = "Delete without yanking" },
      ["<leader>c"] = { '"_c', desc = "Delete without yanking" },

      ["<leader>o"] = {
        "<cmd> ClangdSwitchSourceHeader <cr>",
        desc = "swap btw h/c",
      },
    },
    x = {
      ["<leader>d"] = { '"_d', desc = "Delete without yanking" },
      ["<leader>c"] = { '"_c', desc = "Delete without yanking" },
      ["<leader>p"] = { '"_dP', desc = "Paste without yanking replaced text" },
    },
  },
  plugins = {
    ["dap"] = {
      n = {
        ["<leader>da"] = {
          function()
            require("config.plugins.dap").print_dap_lang_configurations()
          end,
          desc = "Prints dap clang configs",
        },
      },
    },
    neogen = {
      n = {
        ["<leader>nf"] = {
          function()
            require("neogen").generate({})
          end,
          desc = "Gen comment template",
        },
      },
    },
  },
}
