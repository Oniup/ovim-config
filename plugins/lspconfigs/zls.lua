vim.g.zig_fmt_autosave = 0

return {
    zls = {
        enableAutofix = false,
        enableArgumentPlaceholders = false,
        highlightGlobalVarDeclarations = true,
        warnStyle = true,
    },
}
