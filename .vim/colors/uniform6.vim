" Vim color file - uniform6
" Generated by http://bytefluent.com/vivify 2016-10-01
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "uniform6"

"hi SignColumn -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi PMenuSbar -- no settings --
hi Normal guifg=#d6d6d6 guibg=#22232b guisp=#22232b gui=bold ctermfg=188 ctermbg=235 cterm=bold
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
"hi MatchParen -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#80ffff guibg=#0060c0 guisp=#0060c0 gui=NONE ctermfg=123 ctermbg=4 cterm=NONE
hi WildMenu guifg=#ffffff guibg=#ff0022 guisp=#ff0022 gui=NONE ctermfg=15 ctermbg=196 cterm=NONE
hi SpecialComment guifg=#d000f0 guibg=NONE guisp=NONE gui=bold ctermfg=165 ctermbg=NONE cterm=bold
hi Typedef guifg=#bdbdbd guibg=NONE guisp=NONE gui=bold ctermfg=250 ctermbg=NONE cterm=bold
hi Title guifg=#f0f0f8 guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi Folded guifg=#40f0f0 guibg=#005080 guisp=#005080 gui=NONE ctermfg=87 ctermbg=6 cterm=NONE
hi PreCondit guifg=#40f0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi Include guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Float guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi StatusLineNC guifg=#707080 guibg=#c8c8d8 guisp=#c8c8d8 gui=NONE ctermfg=60 ctermbg=146 cterm=NONE
hi NonText guifg=#4080ff guibg=NONE guisp=NONE gui=NONE ctermfg=69 ctermbg=NONE cterm=NONE
hi DiffText guifg=#ff78f0 guibg=#a02860 guisp=#a02860 gui=NONE ctermfg=213 ctermbg=125 cterm=NONE
hi ErrorMsg guifg=#ffa0ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi Ignore guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Debug guifg=#e0e080 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
hi Identifier guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi SpecialChar guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Conditional guifg=#f7f7f7 guibg=NONE guisp=NONE gui=bold,italic ctermfg=15 ctermbg=NONE cterm=bold
hi StorageClass guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Todo guifg=#ffa0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=217 ctermbg=NONE cterm=NONE
hi Special guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi LineNr guifg=#5e5e5e guibg=NONE guisp=NONE gui=bold ctermfg=59 ctermbg=NONE cterm=bold
hi StatusLine guifg=#ffffff guibg=#292929 guisp=#292929 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi Label guifg=#ffc864 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#eb002f guibg=#0a080a guisp=#0a080a gui=NONE ctermfg=197 ctermbg=232 cterm=NONE
hi Search guifg=#ff0055 guibg=#22232b guisp=#22232b gui=bold ctermfg=197 ctermbg=235 cterm=bold
hi Delimiter guifg=#f50303 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi Statement guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi EnumerationValue guifg=#ff5100 guibg=NONE guisp=NONE gui=bold ctermfg=202 ctermbg=NONE cterm=bold
hi Comment guifg=#f01818 guibg=NONE guisp=NONE gui=NONE ctermfg=196 ctermbg=NONE cterm=NONE
hi Character guifg=#ffffff guibg=NONE guisp=NONE gui=bold,italic ctermfg=15 ctermbg=NONE cterm=bold
hi Number guifg=#ff6f0f guibg=NONE guisp=NONE gui=bold ctermfg=202 ctermbg=NONE cterm=bold
hi Boolean guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Operator guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi CursorLine guifg=#5cb6fa guibg=#282933 guisp=#282933 gui=NONE ctermfg=75 ctermbg=236 cterm=NONE
hi Question guifg=#e8e800 guibg=NONE guisp=NONE gui=NONE ctermfg=184 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#ffa0ff guibg=NONE guisp=NONE gui=NONE ctermfg=219 ctermbg=NONE cterm=NONE
hi DiffDelete guifg=#a0d0ff guibg=#0020a0 guisp=#0020a0 gui=NONE ctermfg=153 ctermbg=19 cterm=NONE
hi ModeMsg guifg=#40f0d0 guibg=NONE guisp=NONE gui=NONE ctermfg=86 ctermbg=NONE cterm=NONE
hi Define guifg=#ffffff guibg=NONE guisp=NONE gui=bold,italic ctermfg=15 ctermbg=NONE cterm=bold
hi Function guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi FoldColumn guifg=#40c0ff guibg=#00305c guisp=#00305c gui=NONE ctermfg=81 ctermbg=23 cterm=NONE
hi PreProc guifg=#40f0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=85 ctermbg=NONE cterm=NONE
hi EnumerationName guifg=#ff4b0a guibg=NONE guisp=NONE gui=bold ctermfg=202 ctermbg=NONE cterm=bold
hi Visual guifg=#ffffff guibg=#d60d27 guisp=#d60d27 gui=NONE ctermfg=15 ctermbg=160 cterm=NONE
hi MoreMsg guifg=#00ffff guibg=#008070 guisp=#008070 gui=NONE ctermfg=14 ctermbg=6 cterm=NONE
hi VertSplit guifg=#606080 guibg=#c8c8d8 guisp=#c8c8d8 gui=NONE ctermfg=60 ctermbg=146 cterm=NONE
hi Exception guifg=#ffc864 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi Keyword guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Type guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi DiffChange guifg=#e03870 guibg=#601830 guisp=#601830 gui=NONE ctermfg=168 ctermbg=52 cterm=NONE
hi Cursor guifg=#ffffff guibg=#f70844 guisp=#f70844 gui=NONE ctermfg=15 ctermbg=197 cterm=NONE
hi Error guifg=#ffffff guibg=#ff0088 guisp=#ff0088 gui=NONE ctermfg=15 ctermbg=198 cterm=NONE
hi PMenu guifg=#dbdbdb guibg=#000000 guisp=#000000 gui=NONE ctermfg=253 ctermbg=NONE cterm=NONE
hi SpecialKey guifg=#424242 guibg=NONE guisp=NONE gui=NONE ctermfg=238 ctermbg=NONE cterm=NONE
hi Constant guifg=#ffffff guibg=NONE guisp=NONE gui=italic ctermfg=15 ctermbg=NONE cterm=NONE
hi DefinedName guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Tag guifg=#a8a8a8 guibg=NONE guisp=NONE gui=bold ctermfg=248 ctermbg=NONE cterm=bold
hi String guifg=#ff2600 guibg=NONE guisp=NONE gui=bold ctermfg=196 ctermbg=NONE cterm=bold
hi PMenuThumb guifg=#ffffff guibg=#000000 guisp=#000000 gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi LocalVariable guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Repeat guifg=#ffc864 guibg=NONE guisp=NONE gui=NONE ctermfg=221 ctermbg=NONE cterm=NONE
hi Directory guifg=#40f0d0 guibg=NONE guisp=NONE gui=NONE ctermfg=86 ctermbg=NONE cterm=NONE
hi Structure guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Macro guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi Underlined guifg=#f0f0f8 guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
hi DiffAdd guifg=#a0d0ff guibg=#0020a0 guisp=#0020a0 gui=NONE ctermfg=153 ctermbg=19 cterm=NONE
hi lcursor guifg=#ffffff guibg=#8800ff guisp=#8800ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
hi cursorim guifg=#ffffff guibg=#8800ff guisp=#8800ff gui=NONE ctermfg=15 ctermbg=93 cterm=NONE
