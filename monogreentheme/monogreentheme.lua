-------------------------------
--    "Sky" awesome theme    --
--  By Andrei "Garoth" Thorp --
-------------------------------

local gears = require("gears")
local awful = require("awful")
local wibox = require("wibox")
local awful = require("awful") require("awful.autofocus")
local beautiful = require("beautiful")
local naughty = require("naughty")
local menubar = require("menubar")
local hotkeys_popup = require("awful.hotkeys_popup").widget 
local debian = require("debian.menu")


--#########################################################################
-- User defined stuff

-- user_wifi_menu = {
-- 	{ "WiFi Connections", function() terminal .. "-e watch nmcli dev wifi" end },

-- user_main_menu = awful.menu({ items = 


--#########################################################################


-- If you want SVGs and extras, get them from garoth.com/awesome/sky-theme

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local themes_path = require("gears.filesystem").get_themes_dir()
	


-- BASICS
local theme = {}

local focus_green = "#57F73E"
local normal_green = "#43A73E"

theme.font          = "sans 8" -- sans 8

theme.bg_focus      = focus_green -- #e2eeea
theme.bg_normal     = "#000000" -- #729fcf
theme.bg_urgent     = "#ff0303" -- #fce94f
theme.bg_minimize   = "#0067ce"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = focus_green -- #2e3436
theme.fg_focus      = "#000000" -- #2e3436
theme.fg_urgent     = "#000000" -- #2e3436
theme.fg_minimize   = "#000000" -- #2e3436

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(2)
theme.border_normal = normal_green -- #dae3e0
theme.border_focus  = focus_green -- #729fcf
theme.border_marked = "#eeeeec"

-- IMAGES
theme.layout_fairh           = themes_path .. "sky/layouts/fairh.png"
theme.layout_fairv           = themes_path .. "sky/layouts/fairv.png"
theme.layout_floating        = themes_path .. "sky/layouts/floating.png"
theme.layout_magnifier       = themes_path .. "sky/layouts/magnifier.png"
theme.layout_max             = themes_path .. "sky/layouts/max.png"
theme.layout_fullscreen      = themes_path .. "sky/layouts/fullscreen.png"
theme.layout_tilebottom      = themes_path .. "sky/layouts/tilebottom.png"
theme.layout_tileleft        = themes_path .. "sky/layouts/tileleft.png"
theme.layout_tile            = themes_path .. "sky/layouts/tile.png"
theme.layout_tiletop         = themes_path .. "sky/layouts/tiletop.png"
theme.layout_spiral          = themes_path .. "sky/layouts/spiral.png"
theme.layout_dwindle         = themes_path .. "sky/layouts/dwindle.png"
theme.layout_cornernw        = themes_path .. "sky/layouts/cornernw.png"
theme.layout_cornerne        = themes_path .. "sky/layouts/cornerne.png"
theme.layout_cornersw        = themes_path .. "sky/layouts/cornersw.png"
theme.layout_cornerse        = themes_path .. "sky/layouts/cornerse.png"

-- theme.awesome_icon           = themes_path .. "sky/awesome-icon.png"

-- from default for now...
theme.menu_submenu_icon     = themes_path .. "default/submenu.png"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- MISC
theme.wallpaper             = "~/Pictures/n-o-d-e4.png" -- themes_path .. "sky/sky-background.png"
theme.taglist_squares       = "true"
theme.titlebar_close_button = "true"
theme.menu_height = dpi(45) -- 15
theme.menu_width  = dpi(150) -- 100
images_path = "~/.config/awesome/themes/monogreentheme/images/"

-- Define the image to load
theme.titlebar_close_button_normal = images_path .. "greenCloseButton.png"
--themes_path .. "default/titlebar/close_normal.png"

theme.titlebar_close_button_focus = images_path .. "blackCloseButton.png"
--themes_path .. "default/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
--Doesn't appear because of something in lib/awful?

theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"
--again with lib/awful it won't appear

theme.titlebar_ontop_button_normal_inactive = images_path .. "onTopInActiveNormal.png"
--themes_path .. "default/titlebar/ontop_normal_inactive.png"

theme.titlebar_ontop_button_focus_inactive = images_path .. "onTopInActiveFocus.png"
--themes_path .. "default/titlebar/ontop_focus_inactive.png"

theme.titlebar_ontop_button_normal_active = images_path .. "onTopActiveNormal.png"
--themes_path .. "default/titlebar/ontop_normal_active.png"

theme.titlebar_ontop_button_focus_active = images_path .. "onTopActiveFocus.png"
--themes_path .. "default/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = images_path .. "stickyInactiveNormal.png"
--themes_path .. "default/titlebar/sticky_normal_inactive.png"

theme.titlebar_sticky_button_focus_inactive = images_path .. "stickyInactiveFocus.png"
--themes_path .. "default/titlebar/sticky_focus_inactive.png"

theme.titlebar_sticky_button_normal_active = images_path .. "stickyActiveNormal.png"
--themes_path .. "default/titlebar/sticky_normal_active.png"

theme.titlebar_sticky_button_focus_active = images_path .. "stickyActiveFocus.png"
--themes_path .. "default/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = images_path .. "floating_inactive_normal.png"
--themes_path .. --"default/titlebar/floating_normal_inactive.png"

theme.titlebar_floating_button_focus_inactive = images_path .. "floating_inactive_focus.png"
--themes_path .. "default/titlebar/floating_focus_inactive.png"

theme.titlebar_floating_button_normal_active = images_path .. "floating_active_normal.png"
--themes_path .. "default/titlebar/floating_normal_active.png"

theme.titlebar_floating_button_focus_active = images_path .. "floating_active_focus.png"
--themes_path .. "default/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "default/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path .. "default/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "default/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path .. "default/titlebar/maximized_focus_active.png"

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
