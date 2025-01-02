local wezterm = require("wezterm")

local function file_exists(path)
    local f = io.open(path, "r")
    if f~=nil then io.close(f) return true else return false end
end

local config = {
    audible_bell = "Disabled",
    check_for_updates = false,

    color_scheme = 'Gruvbox light, soft (base16)',
    inactive_pane_hsb = {
   hue = 1.0,
        saturation = 1.0,
        brightness = 1.0,
    },
    font_size = 14,
    launch_menu = {},
    leader = { key="a", mods="CMD" },
    disable_default_key_bindings = true,
    keys = {
        -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
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
        { key = "&", mods = "LEADER|SHIFT", action=wezterm.action{CloseCurrentTab={confirm=true}}},
        { key = "w", mods = "CMD",       action=wezterm.action{CloseCurrentPane={confirm=true}}},

        { key = "n", mods="SHIFT|CMD",     action="ToggleFullScreen" },
        { key ="v",  mods="CMD",    action=wezterm.action.PasteFrom 'Clipboard'},
        { key ="c",  mods="CMD",    action=wezterm.action.CopyTo 'Clipboard'},
        { key = "+", mods="CMD",     action="IncreaseFontSize" },
        { key = "-", mods="CMD",     action="DecreaseFontSize" },
        { key = "0", mods="CMD",     action="ResetFontSize" },
    },
    set_environment_variables = {},
}

return config
