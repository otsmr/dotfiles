-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.hide_tab_bar_if_only_one_tab = true
config.font_size = 15.0

config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false

-- and finally, return the configuration to wezterm
return config
