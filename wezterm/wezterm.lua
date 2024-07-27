local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme = "Batman"
-- 背景透過
config.window_background_opacity = 0.90

-- フォントの設定
config.font = wezterm.font("Symbols Nerd Font Mono", { weight = "Regular", stretch = "Normal", style = "Normal" })
config.cell_width = 0.6
config.line_height = 1.2
-- フォントサイズの設定
config.font_size = 16

return config
