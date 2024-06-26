local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Batman'
-- 背景透過
config.window_background_opacity = 0.90

-- 最初からフルスクリーンで起動
local mux = wezterm.mux
wezterm.on("gui-startup", function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():toggle_fullscreen()
end)

-- ショートカットキー設定
local act = wezterm.action
config.keys = {
  -- Alt(Opt)+Shift+Fでフルスクリーン切り替え
  {
    key = 'f',
    mods = 'SHIFT|META',
    action = wezterm.action.ToggleFullScreen,
  },
}
-- フォントの設定
-- config.font = wezterm.font("好きなフォント", {weight="Medium", stretch="Normal", style="Normal"})
config.font = wezterm.font("Symbols Nerd Font Mono", {weight="Regular", stretch="Normal", style="Normal"})
config.cell_width = 0.6
-- フォントサイズの設定
config.font_size = 16

return config
