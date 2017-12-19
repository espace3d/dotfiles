hi clear
syntax reset
let g:colors_name = "my-default"
if &background == "light"
    hi Boolean gui=NONE guifg=#707070 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi Comment gui=NONE guifg=#969696 guibg=NONE
    hi Conceal gui=NONE guifg=#707070 guibg=NONE
    hi Conditional gui=NONE guifg=#4a4a4a guibg=NONE
    hi Constant gui=NONE guifg=#707070 guibg=NONE
    hi Cursor gui=reverse guifg=NONE guibg=NONE
    hi CursorColumn gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLine gui=NONE guifg=NONE guibg=#f5f5f5
    hi CursorLineNr gui=NONE guifg=#969696 guibg=NONE
    hi DiffAdd gui=NONE guifg=NONE guibg=#f0fff0
    hi DiffChange gui=NONE guifg=NONE guibg=#f5f5f5
    hi DiffDelete gui=NONE guifg=NONE guibg=#fff0f0
    hi DiffText gui=NONE guifg=NONE guibg=#e3e3e3
    hi Directory gui=NONE guifg=#4a4a4a guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#fff0f0
    hi ErrorMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi FoldColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Folded gui=NONE guifg=#969696 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=NONE guibg=#e3e3e3
    hi LineNr gui=NONE guifg=#c2c2c2 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#e3e3e3
    hi ModeMsg gui=NONE guifg=NONE guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Normal gui=NONE guifg=#000000 guibg=#ffffff
    hi Number gui=NONE guifg=#707070 guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#f5f5f5
    hi PmenuSbar gui=NONE guifg=NONE guibg=#ededed
    hi PmenuSel gui=NONE guifg=NONE guibg=#e3e3e3
    hi PmenuThumb gui=NONE guifg=NONE guibg=#dbdbdb
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=NONE guibg=#ededed
    hi SignColumn gui=NONE guifg=#c2c2c2 guibg=NONE
    hi Special gui=NONE guifg=#707070 guibg=NONE
    hi SpecialKey gui=NONE guifg=#c2c2c2 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=NONE guibg=#fff0f0
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#f0fff0
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#ededed
    hi Statement gui=NONE guifg=#4a4a4a guibg=NONE
    hi StatusLine gui=NONE guifg=#262626 guibg=#ededed
    hi StatusLineNC gui=NONE guifg=#969696 guibg=#ededed
    hi StorageClass gui=NONE guifg=#4a4a4a guibg=NONE
    hi String gui=NONE guifg=#707070 guibg=NONE
    hi TabLine gui=NONE guifg=#969696 guibg=#ededed
    hi TabLineFill gui=NONE guifg=NONE guibg=#ededed
    hi TabLineSel gui=NONE guifg=#262626 guibg=#ededed
    hi Title gui=NONE guifg=#707070 guibg=NONE
    hi Todo gui=standout guifg=NONE guibg=NONE
    hi Type gui=NONE guifg=#4a4a4a guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#e3e3e3 guibg=NONE
    hi Visual gui=NONE guifg=NONE guibg=#e3e3e3
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#fff0f0
    hi WildMenu gui=NONE guifg=NONE guibg=#d1d1d1
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
elseif &background == "dark"
    hi Boolean gui=NONE guifg=#d728c6 guibg=NONE
    hi ColorColumn gui=NONE guifg=NONE guibg=#1a1a1a
    hi Comment gui=NONE guifg=#707070 guibg=NONE
    hi Conceal gui=NONE guifg=#808080 guibg=NONE
    hi Conditional gui=NONE guifg=#d260c7 guibg=NONE
    hi Constant gui=NONE guifg=#808080 guibg=NONE
    hi Cursor gui=reverse guifg=#447cbb guibg=#ffffff
    hi CursorColumn gui=NONE guifg=NONE guibg=#3a4a59
    hi CursorLine gui=NONE guifg=#ff0080 guibg=#2b313b
    hi CursorLineNr gui=NONE guifg=#707070 guibg=NONE
    hi DiffAdd gui=NONE guifg=#000000 guibg=#d6ffd6
    hi DiffChange gui=NONE guifg=NONE guibg=#1a1a1a
    hi DiffDelete gui=NONE guifg=NONE guibg=#d73737
    hi DiffText gui=NONE guifg=NONE guibg=#333333
    hi Directory gui=NONE guifg=#8f8f8f guibg=NONE
    hi Error gui=NONE guifg=NONE guibg=#260808
    hi ErrorMsg gui=NONE guifg=#ff0000 guibg=#2b313b
    hi FoldColumn gui=NONE guifg=#616161 guibg=NONE
    hi Folded gui=NONE guifg=#707070 guibg=NONE
    hi Ignore gui=NONE guifg=NONE guibg=NONE
    hi IncSearch gui=NONE guifg=#e0fb32 guibg=#2b313b
    hi LineNr gui=NONE guifg=#616161 guibg=NONE
    hi MatchParen gui=NONE guifg=NONE guibg=#333333
    hi ModeMsg gui=NONE guifg=#00ff00 guibg=NONE
    hi MoreMsg gui=NONE guifg=NONE guibg=NONE
    hi NonText gui=NONE guifg=#616161 guibg=NONE
    hi Normal gui=NONE guifg=#acb5b9 guibg=#282c34
    hi Number gui=NONE guifg=#5da2da guibg=NONE
    hi Pmenu gui=NONE guifg=NONE guibg=#1d2025
    hi PmenuSbar gui=NONE guifg=NONE guibg=#262626
    hi PmenuSel gui=NONE guifg=#ff0080 guibg=#333333
    hi PmenuThumb gui=NONE guifg=NONE guibg=#424242
    hi Question gui=NONE guifg=NONE guibg=NONE
    hi Search gui=NONE guifg=#ff0080 guibg=#282c34
    hi SignColumn gui=NONE guifg=#00ff00 guibg=NONE
    hi Special gui=NONE guifg=#ff0ace guibg=NONE
    hi SpecialKey gui=NONE guifg=#616161 guibg=NONE
    hi SpellBad gui=undercurl guisp=NONE guifg=#ff0080 guibg=#260808
    hi SpellCap gui=undercurl guisp=NONE guifg=NONE guibg=NONE
    hi SpellLocal gui=undercurl guisp=NONE guifg=NONE guibg=#082608
    hi SpellRare gui=undercurl guisp=NONE guifg=NONE guibg=#262626
    hi Statement gui=NONE guifg=#282c34 guibg=NONE
    hi StatusLine gui=NONE guifg=#f54784 guibg=#000000
    hi StatusLineNC gui=NONE guifg=#707070 guibg=#262626
    hi StorageClass gui=NONE guifg=#69ba89 guibg=NONE
    hi String gui=NONE guifg=#ff8000 guibg=NONE
    hi TabLine gui=NONE guifg=#707070 guibg=#2b313b
    hi TabLineFill gui=NONE guifg=NONE guibg=#2b313b
    hi TabLineSel gui=NONE guifg=#dd8022 guibg=#282c34
    hi Title gui=NONE guifg=#808080 guibg=NONE
    hi Todo gui=standout guifg=#ff0080 guibg=NONE
    hi Type gui=NONE guifg=#8f8f8f guibg=NONE
    hi Underlined gui=NONE guifg=NONE guibg=NONE
    hi VertSplit gui=NONE guifg=#333333 guibg=NONE
    hi Visual gui=NONE guifg=#00ff00 guibg=#2b313b
    hi VisualNOS gui=NONE guifg=NONE guibg=NONE
    hi WarningMsg gui=NONE guifg=NONE guibg=#260808
    hi WildMenu gui=NONE guifg=NONE guibg=#525252
    hi lCursor gui=NONE guifg=NONE guibg=NONE
    hi Identifier gui=NONE guifg=NONE guibg=NONE
    hi PreProc gui=NONE guifg=NONE guibg=NONE
endif