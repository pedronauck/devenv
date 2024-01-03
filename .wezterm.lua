local wezterm = require("wezterm")

local active_tab = {
	bg_color = "#0C1116",
	fg_color = "white",
	intensity = "Bold",
}
local inactive_tab = {
	bg_color = "#0C1116",
	fg_color = "#5D6A7A",
}
local inactive_tab_hover = {
	bg_color = "#0C1116",
	fg_color = "white",
	italic = false,
}

local font = wezterm.font({
	family = "CommitMonoNauck",
	weight = "Medium",
	stretch = "Condensed",
})

local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = "#0C1116"

local config = {
	window_decorations = "RESIZE",
	font = font,
	font_size = 15,
	scrollback_lines = 10000,
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = true,
	freetype_load_flags = "NO_HINTING",
	colors = {},
	color_schemes = {
		["Nauckpuccin"] = custom,
	},
	color_scheme = "Nauckpuccin",
	window_frame = {
		font = font,
		font_size = 15,
		active_titlebar_bg = inactive_tab.bg_color,
		inactive_titlebar_bg = inactive_tab.bg_color,
	},
}

config.colors.tab_bar = {
	active_tab = active_tab,
	inactive_tab = inactive_tab,
	inactive_tab_hover = inactive_tab_hover,
	new_tab = inactive_tab,
	new_tab_hover = inactive_tab_hover,
}

config.hyperlink_rules = wezterm.default_hyperlink_rules()

--- make username/project paths clickable. this implies paths like the following are for github.
-- ( "nvim-treesitter/nvim-treesitter" | wbthomason/packer.nvim | wez/wezterm | "wez/wezterm.git" )
-- as long as a full url hyperlink regex exists above this it should not match a full url to
-- github or gitlab / bitbucket (i.e. https://gitlab.com/user/project.git is still a whole clickable url)
table.insert(config.hyperlink_rules, {
	regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
	format = "https://www.github.com/$1/$3",
})

return config
