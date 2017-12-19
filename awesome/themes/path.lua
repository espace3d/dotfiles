--path.lua in .config/awesome/themes/
--
--in rc.lua
--local p=require("themes.path")
--p.c.."path"

--in theme.lua
--local p=require("path")

local M={}

M.c="~/.config/awesome/"
print(M.c)
return M
