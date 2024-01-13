local M = {}

M.border = {
  type = "solid",
}

M.colorscheme = {
  hl_overrides = {
    NormalFloat = { link = "Background0" },
    FloatBorder = { link = "Background0" },
    NvimTreeNormal = { link = "Background0" },

    TelescopeNormal = { link = "Background0" },
    TelescopeBorder = { link = "Background0" },
    TelescopePromptNormal = { link = "Background2" },
    TelescopePromptBorder = { link = "Background2" },

    CmpNormal = { link = "NormalFloat" },
  },
}

return M
