local wezterm = require("wezterm")
local act = wezterm.action

local config = wezterm.config_builder()

config.color_scheme = "s3r0 modified (terminal.sexy)"

-- [[  Font  ]]
config.font = wezterm.font("FiraCode Nerd Font Mono", {
	weight = "Light",
})
config.font_size = 13
config.freetype_load_target = "Normal"
config.leader = { key = "a", mods = "CTRL" }

-- [[ UI ]]
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.8
config.macos_window_background_blur = 50
config.front_end = "WebGpu"
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = true
config.tab_bar_at_bottom = false
config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
}
config.window_padding = {
	left = 0,
	right = 0,
	top = "0.25cell",
	bottom = 0,
}

-- [[ Cursor ]]
config.cursor_blink_rate = 800
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"

-- [[ Keybinds ]]
config.keys = {
	-- Text Editing
	{ key = "Backspace", mods = "CTRL", action = act.SendKey({ key = "w", mods = "CTRL" }) },
	-- Window Management
	{ key = "a", mods = "LEADER|CTRL", action = wezterm.action({ SendString = "\x02" }) },
	{ key = "-", mods = "LEADER", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{ key = "\\", mods = "LEADER", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },
	{ key = "o", mods = "LEADER", action = "TogglePaneZoomState" },
	{ key = "c", mods = "LEADER", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },
	{ key = "h", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	{ key = "j", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	{ key = "k", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	{ key = "l", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
	{ key = "H", mods = "LEADER|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Left", 5 } }) },
	{ key = "J", mods = "LEADER|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Down", 5 } }) },
	{ key = "K", mods = "LEADER|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Up", 5 } }) },
	{ key = "L", mods = "LEADER|SHIFT", action = wezterm.action({ AdjustPaneSize = { "Right", 5 } }) },
	{ key = "n", mods = "LEADER", action = wezterm.action({ ActivateTabRelative = 1 }) },
	{ key = "b", mods = "LEADER", action = wezterm.action({ ActivateTabRelative = -1 }) },
	{ key = "1", mods = "LEADER", action = wezterm.action({ ActivateTab = 0 }) },
	{ key = "2", mods = "LEADER", action = wezterm.action({ ActivateTab = 1 }) },
	{ key = "3", mods = "LEADER", action = wezterm.action({ ActivateTab = 2 }) },
	{ key = "4", mods = "LEADER", action = wezterm.action({ ActivateTab = 3 }) },
	{ key = "5", mods = "LEADER", action = wezterm.action({ ActivateTab = 4 }) },
	{ key = "6", mods = "LEADER", action = wezterm.action({ ActivateTab = 5 }) },
	{ key = "7", mods = "LEADER", action = wezterm.action({ ActivateTab = 6 }) },
	{ key = "8", mods = "LEADER", action = wezterm.action({ ActivateTab = 7 }) },
	{ key = "9", mods = "LEADER", action = wezterm.action({ ActivateTab = 8 }) },
	{ key = "&", mods = "LEADER|SHIFT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
	{ key = "d", mods = "LEADER", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
	{ key = "x", mods = "LEADER", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
	{
		key = "LeftArrow",
		mods = "OPT",
		action = act.SendKey({
			key = "b",
			mods = "ALT",
		}),
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = act.SendKey({ key = "f", mods = "ALT" }),
	},
}

return config
