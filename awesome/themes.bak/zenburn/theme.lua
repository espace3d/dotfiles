-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons

-- {{{ Main
theme = {}
theme.wallpaper = "/home/systeme/.config/awesome/themes/zenburn/background.png"
-- }}}

-- {{{ Styles
theme.font      = "TakaoPGothic 8"

-- {{{ Colors
theme.fg_normal  = "#FFFFFF" --blanc
theme.fg_focus   = "#FFFFFF" --blanc
theme.fg_urgent  = "#F20707"
theme.bg_normal  = "#101011AA"
theme.bg_focus   = "#101011AA"
theme.bg_urgent  = "#101011AA"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 8
theme.border_normal                 = "#[90]252525"
theme.border_focus                  = "#[90]0080FF"
theme.border_marked = "#CC9393AA"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#101011AA"
theme.titlebar_bg_normal = "##101011AA"
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#CC9393"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 15
theme.menu_width  = 100
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "/home/systeme/.config/awesome/themes/zenburn/taglist/squarefz.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/zenburn/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = "/home/systeme/.config/awesome/themes/zenburn/awesome-icon.png"
theme.menu_submenu_icon      = "/home/systeme/.config/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "/home/systeme/.config/awesome/themes/zenburn/layouts/tile.png"
theme.layout_tileleft   = "/home/systeme/.config/awesome/themes/zenburn/layouts/tileleft.png"
theme.layout_tilebottom = "/home/systeme/.config/awesome/themes/zenburn/layouts/tilebottom.png"
theme.layout_tiletop    = "/home/systeme/.config/awesome/themes/zenburn/layouts/tiletop.png"
theme.layout_fairv      = "/home/systeme/.config/awesome/themes/zenburn/layouts/fairv.png"
theme.layout_fairh      = "/home/systeme/.config/awesome/themes/zenburn/layouts/fairh.png"
theme.layout_spiral     = "/home/systeme/.config/awesome/themes/zenburn/layouts/spiral.png"
theme.layout_dwindle    = "/home/systeme/.config/awesome/themes/zenburn/layouts/dwindle.png"
theme.layout_max        = "/home/systeme/.config/awesome/themes/zenburn/layouts/max.png"
theme.layout_fullscreen = "/home/systeme/.config/awesome/themes/zenburn/layouts/fullscreen.png"
theme.layout_magnifier  = "/home/systeme/.config/awesome/themes/zenburn/layouts/magnifier.png"
theme.layout_floating   = "/home/systeme/.config/awesome/themes/zenburn/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/home/systeme/.config/awesome/themes/zenburn/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/home/systeme/.config/awesome/themes/zenburn/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/home/systeme/.config/awesome/themes/zenburn/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/home/systeme/.config/awesome/themes/zenburn/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/home/systeme/.config/awesome/themes/zenburn/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/home/systeme/.config/awesome/themes/zenburn/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/home/systeme/.config/awesome/themes/zenburn/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/home/systeme/.config/awesome/themes/zenburn/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/home/systeme/.config/awesome/themes/zenburn/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/home/systeme/.config/awesome/themes/zenburn/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
