local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.automatically_reload_config = false
config.color_scheme = "AdventureTime"

-- scroll backline
config.scrollback_lines = 10000
-- ime
config.use_ime = true
-- exit
config.exit_behavior = "CloseOnCleanExit"
-- color scheme
config.color_scheme = "Dracula+"
-- transparent
config.window_background_opacity = 0.9
config.macos_window_background_blur = 10
-- font size
config.font_size = 16

return config
