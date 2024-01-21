local M = {
    relativenumber = true,
    clipboard = "unnamedplus",
    belloff = "all",
    visualbell = false,

    synmaxcol = 200,
}

if vim.g.neovide or vim.g.nvy then
    M.guifont = "Hasklug Nerd Font Mono:h15"
    vim.api.nvim_set_current_dir(vim.env.HOME)
end

return M
