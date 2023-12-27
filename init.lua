local guifont = "Hasklug Nerd Font Mono:h16"

if vim.g.neovide then
  vim.g.neovide_remember_window_size = true
  vim.g.neovide_cursor_animation_length = 0
  vim.o.guifont = guifont
end

if vim.g.nvy then
  vim.o.guifont = guifont
end
