return {
  general = {
    i = {
      ["jk"] = { "<ESC>", desc = "Esc into normal mode" },
    },
    v = {
      ["jk"] = { "<ESC>", desc = "Esc into normal mode" },
    },
    n = {
      ["<leader>nh"] = { "<CMD>noh<CR>", desc = "Clear highlight" },
      ["<leader>d"] = { "\"_d", desc = "Delete without yanking" },
      ["<leader>c"] = { "\"_c", desc = "Delete without yanking" },

      ["<leader>o"] = { "<CMD>ClangdSwitchSourceHeader<CR>", desc = "swap btw h/c" },
    },
    x = {
      ["<leader>d"] = { "\"_d", desc = "Delete without yanking" },
      ["<leader>c"] = { "\"_c", desc = "Delete without yanking" },
      ["<leader>p"] = { "\"_dP", desc = "Paste without yanking replaced text" },
    }
  },
  plugins = {
    ["dap"] = {
      n = {
        ["<leader>da"] = {
          function()
            require("core_plugins.dap").print_dap_lang_configurations()
          end,
          desc = "Prints dap clang configs"
        },
      },
    },
  },
}
