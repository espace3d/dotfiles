-------------------------------
--  "Desert" awesome theme  --
--    By Daes DP. (2011)   --
-------------------------------


-- {{{ Main
theme = {}
theme.wallpaper_cmd = { "awsetbg .config/awesome/themes/background3.jpg" }
-- }}}

-- {{{ Styles
theme.font      = "Terminus 7"

-- {{{ Colors
theme.fg_normal = "#D5D5D5"
theme.fg_focus  = "#ff6600"
theme.fg_urgent = "#990000"
theme.bg_normal = "#151515f0"
theme.bg_focus  = ""
theme.bg_urgent = "#151515aa"
-- }}}

-- {{{ Borders
theme.border_width  = "1.2"
theme.border_width_panel  = "1"
theme.border_panel = "#555555"
theme.border_normal = "#888888"
theme.border_wnormal = "#888888"
theme.border_focus  = "#ff6600"
theme.border_marked = "#303030"
--theme.border_marked = "#CC9393"
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = "5"
theme.menu_width  = "100"
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "~/.config/awesome/themes/taglist/squarefw.png"
theme.taglist_squares_unsel = "~/.config/awesome/themes/taglist/squarew.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
-- theme.awesome_icon           = "/usr/share/awesome/themes/zenburn/awesome-icon.png"
theme.menu_submenu_icon      = "~/.config/awesome/themes/icons/submenu.png"
-- theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"
-- }}}

return theme
