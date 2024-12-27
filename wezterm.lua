local wezterm = require 'wezterm'

return {
  window_background_opacity = 0.8,
  text_background_opacity = 0.9,
  font = wezterm.font("hack Nerd Font"),
  default_cursor_style = "BlinkingBar",
  window_padding = {
    left = 30,
    right = 30,
    top = 30,
    bottom = 30,
  },
  enable_tab_bar = false,
}
