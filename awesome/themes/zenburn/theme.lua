-------------------------------
--  "Zenburn" awesome theme  --
--    By Adrian C. (anrxc)   --
-------------------------------

-- Alternative icon sets and widget icons:
--  * http://awesome.naquadah.org/wiki/Nice_Icons


--in theme.lua
--local p=require("path")

-- {{{ Main



theme = {}
--colors
theme.transparent="#101011AA"



theme.dir="~/.config/awesome/themes/zenburn/"
theme.wallpaper = theme.dir.."background.png"
-- }}}

-- {{{ Styles
theme.font      = "Ubuntu Mono 12"

-- {{{ Colors
theme.fg_normal  = "#FFFFFF" --blanc
theme.fg_focus   = "#FFFFFF" --blanc
theme.fg_urgent  = "#F20707"
theme.bg_normal  = theme.transparent --fond de panel supérieur 
theme.bg_focus   = "#424242"--marqueur bureau actuel
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
theme.taglist_squares_sel   = theme.dir.."/taglist/squarefz.png"
theme.taglist_squares_unsel = theme.dir.."/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
--theme.awesome_icon           = theme.dir.."/awesome-icon.png"
theme.awesome_icon           = theme.dir.."awesome-icon.png"
theme.menu_submenu_icon      = theme.dir.."/root/.config/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = theme.dir.."/layouts/tile.png"
theme.layout_tiletop    = theme.dir.."/layouts/tiletop.png"
theme.layout_fairv      = theme.dir.."/layouts/fairv.png"
theme.layout_fairh      = theme.dir.."/layouts/fairh.png"
theme.layout_spiral     = theme.dir.."/layouts/spiral.png"
theme.layout_dwindle    = theme.dir.."/layouts/dwindle.png"
theme.layout_max        = theme.dir.."/layouts/max.png"
theme.layout_fullscreen = theme.dir.."/layouts/fullscreen.png"
theme.layout_magnifier  = theme.dir.."/layouts/magnifier.png"
theme.layout_floating   = theme.dir.."/layouts/floating.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = theme.dir.."/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.dir.."/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active  = theme.dir.."/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = theme.dir.."/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = theme.dir.."/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.dir.."/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = theme.dir.."/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = theme.dir.."/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = theme.dir.."/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.dir.."/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = theme.dir.."/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = theme.dir.."/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = theme.dir.."/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.dir.."/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = theme.dir.."/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = theme.dir.."/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.dir.."/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.dir.."/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
