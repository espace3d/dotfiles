" Vim color file - uniformity
" Generated by http://bytefluent.com/vivify 2017-08-31
" created by Grégory Dailly"
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "uniformity"

"" COLORS
let back="#2f3645"
let background_minus="#333b4b"
let background_plus="#2a303d"

let norm="#ffffff"
let pink=""

"" CURRENT SETTINGS
hi Normal guifg=#ffffff guibg=#141516 guisp=NONE gui=bold ctermfg=252 ctermbg=None cterm=bold
hi IncSearch guifg=#ffe400 guibg=#2a303d guisp=NONE gui=NONE ctermfg=202 ctermbg=NONE cterm=NONE
hi LineNr guifg=#2a303d guibg=#141516 guisp=NONE gui=bold ctermfg=240 ctermbg=NONE cterm=bold
hi Number guifg=#6281fc guibg=#141516 guisp=NONE gui=bold ctermfg=69 ctermbg=NONE cterm=bold
hi Boolean guifg=#db0f7c guibg=NONE guisp=NONE gui=bold ctermfg=161 ctermbg=NONE cterm=bold
hi Operator guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi CursorLine guifg=#ffffff guibg=#1d1e20 guisp=NONE gui=NONE ctermfg=15 ctermbg=237 cterm=NONE
hi CursorLineNr guifg=#ffffff guibg=#1d1e20 guisp=NONE gui=NONE ctermfg=15 ctermbg=None cterm=NONE
hi CursorColumn guifg=#ffffff guibg=#1d1e20 guisp=NONE gui=NONE ctermfg=15 ctermbg=None cterm=NONE
hi lcursor guifg=#ffffff guibg=#141516 guisp=NONE gui=NONE ctermfg=15 ctermbg=0 cterm=NONE
hi cursorim guifg=#ffffff guibg=#141516 guisp=NONE gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi TabLineFill guifg=#ffffff guibg=#141516 guisp=NONE gui=NONE ctermfg=15 ctermbg=None cterm=NONE
hi TabLineSel guifg=#ffffff guibg=#2a303d guisp=NONE gui=NONE ctermfg=15 ctermbg=None cterm=NONE
hi TabLine guifg=#ffffff guibg=#141516 guisp=NONE gui=NONE ctermfg=244 ctermbg=235 cterm=NONE
hi Cursor guifg=#ffffff guibg=#8800ff guisp=NONE gui=NONE ctermfg=15 ctermbg=15 cterm=NONE
hi Visual guifg=#ffffff guibg=#141516 guisp=NONE gui=NONE ctermfg=162 ctermbg=237 cterm=NONE
hi PMenuSel guifg=#ff007b guibg=#141516 guisp=#0a080a gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi Pmenu guifg=#ffffff guibg=#1d1e20 guisp=NONE gui=NONE ctermfg=15 ctermbg=235 cterm=NONE



hi StatusLineNC guifg=#707080 guibg=#c8c8d8 guisp=#c8c8d8 gui=NONE ctermfg=240 ctermbg=234 cterm=NONE
hi StatusLine guifg=#ff00ff guibg=#141516 guisp=#141516 gui=NONE ctermfg=235 ctermbg=232 cterm=NONE

"hi SignColumn -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi PMenuSbar -- no settings --
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi TabLineSel -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi VisualNOS -- no settings --
"hi CursorColumn -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
hi MatchParen guifg=#ff007b guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
"hi MatchParen -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi WildMenu guifg=#ffffff guibg=#ff0022 guisp=#ff0022 gui=NONE ctermfg=202 ctermbg=NONE cterm=NONE
hi SpecialComment guifg=#d000f0 guibg=NONE guisp=NONE gui=bold ctermfg=165 ctermbg=NONE cterm=bold
hi Typedef guifg=#bdbdbd guibg=NONE guisp=NONE gui=bold ctermfg=250 ctermbg=NONE cterm=bold
hi Title guifg=#f0f0f8 guibg=#2c2d34 guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi Folded guifg=#40f0f0 guibg=#005080 guisp=#005080 gui=NONE ctermfg=87 ctermbg=6 cterm=NONE
hi PreCondit guifg=#40f0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Include guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Float guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi NonText guifg=#4080ff guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi DiffText guifg=#ff78f0 guibg=#a02860 guisp=#a02860 gui=NONE ctermfg=213 ctermbg=125 cterm=NONE
hi ErrorMsg guifg=#ffa0ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi Ignore guifg=#141516 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Debug guifg=#e0e080 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi Identifier guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi SpecialChar guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Conditional guifg=#f7f7f7 guibg=NONE guisp=NONE gui=bold,italic ctermfg=15 ctermbg=NONE cterm=bold
hi StorageClass guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Todo guifg=#00ff60 guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=198 cterm=NONE
hi Special guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Label guifg=#66c2ff guibg=NONE guisp=NONE gui=NONE ctermfg=75 ctermbg=NONE cterm=NONE
hi Search guifg=#ff00f7 guibg=NONE guisp=NONE gui=NONE ctermfg=226 ctermbg=None cterm=NONE
hi Delimiter guifg=#f50303 guibg=#2c2d34 guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi Statement guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi EnumerationValue guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi Comment guifg=#ff007b guibg=NONE guisp=NONE gui=NONE ctermfg=198 ctermbg=NONE cterm=NONE
hi Character guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Question guifg=#e8e800 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ffa0ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#a0d0ff guibg=#0020a0 guisp=#0020a0 gui=NONE ctermfg=153 ctermbg=19 cterm=NONE
hi ModeMsg guifg=#40f0d0 guibg=NONE guisp=NONE gui=NONE ctermfg=86 ctermbg=NONE cterm=NONE
hi Define guifg=#ffffff guibg=NONE guisp=NONE gui=bold,italic ctermfg=15 ctermbg=NONE cterm=bold
hi Function guifg=#b94fff guibg=NONE guisp=NONE gui=bold ctermfg=135 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#40c0ff guibg=#00305c guisp=#00305c gui=NONE ctermfg=81 ctermbg=23 cterm=NONE
hi PreProc guifg=#40f0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi EnumerationName guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold
hi MoreMsg guifg=#00ffff guibg=#008070 guisp=#008070 gui=NONE ctermfg=14 ctermbg=6 cterm=NONE
hi VertSplit guifg=#606080 guibg=#c8c8d8 guisp=#c8c8d8 gui=NONE ctermfg=215 ctermbg=235 cterm=NONE
hi Exception guifg=#ffc864 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Type guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi DiffChange guifg=#e03870 guibg=#601830 guisp=#601830 gui=NONE ctermfg=168 ctermbg=52 cterm=NONE
hi Error guifg=#ffffff guibg=#ff0088 guisp=#ff0088 gui=NONE ctermfg=15 ctermbg=198 cterm=NONE
hi SpecialKey guifg=#424242 guibg=NONE guisp=NONE gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
hi Constant guifg=#ffffff guibg=NONE guisp=NONE gui=italic ctermfg=15 ctermbg=NONE cterm=NONE
hi DefinedName guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Tag guifg=#a8a8a8 guibg=NONE guisp=NONE gui=bold ctermfg=248 ctermbg=NONE cterm=bold
hi String guifg=#d63691 guibg=NONE guisp=NONE gui=bold ctermfg=169 ctermbg=NONE cterm=bold
hi PMenuThumb guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi LocalVariable guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Repeat guifg=#ff8400 guibg=NONE guisp=NONE gui=NONE ctermfg=208 ctermbg=NONE cterm=NONE
hi Directory guifg=#40f0d0 guibg=NONE guisp=NONE gui=NONE ctermfg=86 ctermbg=NONE cterm=NONE
hi Structure guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Macro guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Underlined guifg=#f0f0f8 guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#a0d0ff guibg=#0020a0 guisp=#0020a0 gui=NONE ctermfg=153 ctermbg=19 cterm=NONE
