local wezterm = require 'wezterm'

return {
  window_background_opacity = 0.8,
  text_background_opacity = 0.9,
  default_cursor_style = "BlinkingBar",
  font_size = 11,
  window_padding = {
    left = 30,
    right = 30,
    top = 30,
    bottom = 30,
  },
  -- enable_tab_bar = false,
  
  keys = {
    -- Mover aba atual para a esquerda
    {
      key = "LeftArrow",
      mods = "CTRL|SHIFT",
      action = wezterm.action.MoveTabRelative(-1),
    },
    -- Mover aba atual para a direita
    {
      key = "RightArrow",
      mods = "CTRL|SHIFT",
      action = wezterm.action.MoveTabRelative(1),
    },
  },
}
