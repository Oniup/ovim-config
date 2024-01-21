local M = {}

M.opts = {
    size = function(term)
        if term.direction == "horizontal" then
            return 30
        elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
        end
    end,
    hide_numbers = false,
}

return M
