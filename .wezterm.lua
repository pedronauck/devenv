local wezterm = require("wezterm")
local act = wezterm.action

local active_tab = {
	bg_color = "#0D1116",
	fg_color = "white",
	intensity = "Bold",
}
local inactive_tab = {
	bg_color = "#16191C",
	fg_color = "#5D6A7A",
}
local inactive_tab_hover = {
	bg_color = "#16191C",
	fg_color = "white",
	italic = false,
}

local font = wezterm.font({
	family = "Inconsolata Nerd Font",
	weight = "Bold",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})

local config = {
	window_decorations = "RESIZE",
	font = font,
	font_size = 16,
	line_height = 1.2,
	scrollback_lines = 10000,
	hide_tab_bar_if_only_one_tab = true,
	color_scheme = "Catppuccin Mocha",
	use_fancy_tab_bar = true,
	colors = {
		background = active_tab.bg_color,
	},
	window_frame = {
		font = font,
		font_size = 14,
		active_titlebar_bg = inactive_tab.bg_color,
		inactive_titlebar_bg = inactive_tab.bg_color,
	},
}

config.colors.tab_bar = {
	background = active_tab.bg_color,
	active_tab = active_tab,
	inactive_tab = inactive_tab,
	inactive_tab_hover = inactive_tab_hover,
	new_tab = inactive_tab,
	new_tab_hover = inactive_tab_hover,
}

config.hyperlink_rules = wezterm.default_hyperlink_rules()
config.leader = { key = "a", mods = "CMD", timeout_milliseconds = 3000 }
config.keys = {
	{
		key = "[",
		mods = "LEADER",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "]",
		mods = "LEADER",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "w",
		mods = "LEADER",
		action = act.CloseCurrentPane({ confirm = true }),
	},
	{
		key = "z",
		mods = "LEADER",
		action = act.TogglePaneZoomState,
	},
	{
		key = "h",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "LEADER",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "t",
		mods = "LEADER",
		action = act.ShowTabNavigator,
	},
	{
		key = "LeftArrow",
		mods = "LEADER",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "DownArrow",
		mods = "LEADER",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{ key = "UpArrow", mods = "LEADER", action = act.AdjustPaneSize({ "Up", 5 }) },
	{
		key = "RightArrow",
		mods = "LEADER",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
}

for i = 1, 9 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = act.ActivatePaneByIndex(i - 1),
	})
end

--- make username/project paths clickable. this implies paths like the following are for github.
-- ( "nvim-treesitter/nvim-treesitter" | wbthomason/packer.nvim | wez/wezterm | "wez/wezterm.git" )
-- as long as a full url hyperlink regex exists above this it should not match a full url to
-- github or gitlab / bitbucket (i.e. https://gitlab.com/user/project.git is still a whole clickable url)
table.insert(config.hyperlink_rules, {
	regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
	format = "https://www.github.com/$1/$3",
})

return config
