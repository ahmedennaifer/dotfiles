local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = 'rose-pine-dawn'
config.font_size = 24
font = wezterm.font_with_fallback {
    { family = 'JetBrains Mono', weight = 'Bold' },
    { family = 'Terminus', weight = 'Bold' },
  }
config.window_background_opacity = 0.8
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = true
config.macos_window_background_blur = 15

config.keys = {
        { key = "a", mods = "LEADER|CTRL",  action=wezterm.action{SendString="\x01"}},
        { key = "p", mods = "CMD",          action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
        { key = "/",mods = "CMD",           action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
        { key = "z", mods = "LEADER",       action="TogglePaneZoomState" },
        { key = "c", mods = "LEADER",       action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
        { key = "h", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Left"}},
        { key = "j", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Down"}},
        { key = "k", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Up"}},
        { key = "l", mods = "LEADER",       action=wezterm.action{ActivatePaneDirection="Right"}},
        { key = "H", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Left", 5}}},
        { key = "J", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Down", 5}}},
        { key = "K", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Up", 5}}},
        { key = "L", mods = "LEADER|SHIFT", action=wezterm.action{AdjustPaneSize={"Right", 5}}},
        { key = "&", mods = "CMD",          action=wezterm.action{ActivatePaneByIndex=0}},
        { key = "é", mods = "CMD",          action=wezterm.action{ActivatePaneByIndex=1}},
        { key = "3", mods = "LEADER",       action=wezterm.action{ActivateTab=2}},
        { key = "4", mods = "LEADER",       action=wezterm.action{ActivateTab=3}},
        { key = "5", mods = "LEADER",       action=wezterm.action{ActivateTab=4}},
        { key = "6", mods = "LEADER",       action=wezterm.action{ActivateTab=5}},
        { key = "7", mods = "LEADER",       action=wezterm.action{ActivateTab=6}},
        { key = "8", mods = "LEADER",       action=wezterm.action{ActivateTab=7}},
        { key = "9", mods = "LEADER",       action=wezterm.action{ActivateTab=8}},
        { key = "w", mods = "CMD",       action=wezterm.action{CloseCurrentPane={confirm=true}}},

        { key = "n", mods="SHIFT|CMD",     action="ToggleFullScreen" },
        { key ="v",  mods="CMD",    action=wezterm.action.PasteFrom 'Clipboard'},
        { key ="c",  mods="CMD",    action=wezterm.action.CopyTo 'Clipboard'},
        { key = "+", mods="CMD",     action="IncreaseFontSize" },
        { key = "-", mods="CMD",     action="DecreaseFontSize" },
        { key = "0", mods="CMD",     action="ResetFontSize" },
    }
return config
