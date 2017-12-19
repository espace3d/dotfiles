" Vim color file - summer
" Generated by http://bytefluent.com/vivify 2016-09-26
set background=light
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "summer"

"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
hi Normal guifg=#000000 guibg=#ededed guisp=#ffffff gui=NONE ctermfg=NONE ctermbg=15 cterm=NONE
"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi TabLineSel -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
"hi CursorColumn -- no settings --
"hi FoldColumn -- no settings --
"hi EnumerationName -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
"hi DiffChange -- no settings --
"hi Cursor -- no settings --
"hi SpellLocal -- no settings --
hi SpecialKey guibg=#ededed guifg=#d7d7d7    
"hi DefinedName -- no settings --
"hi MatchParen -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
"hi Underlined -- no settings --
"hi DiffAdd -- no settings --
"hi TabLine -- no settings --
"hi pythonspaceerror -- no settings --
"hi clear -- no settings --
hi IncSearch guifg=#ffffff guibg=#030303 guisp=#ffae00 gui=NONE ctermfg=52 ctermbg=214 cterm=NONE
hi SpecialComment guifg=#e47a00 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi Typedef guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Title guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Folded guifg=#336589 guibg=#c3daea guisp=#c3daea gui=NONE ctermfg=66 ctermbg=152 cterm=NONE
hi PreCondit guifg=#e60008 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Include guifg=#e60008 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Float guifg=#007ade guibg=NONE guisp=NONE gui=NONE ctermfg=32 ctermbg=NONE cterm=NONE
hi StatusLineNC guifg=#88bb95 guibg=#51b069 guisp=#51b069 gui=NONE ctermfg=108 ctermbg=72 cterm=NONE
hi NonText guifg=#3b7caa guibg=#b7dce8 guisp=#b7dce8 gui=NONE ctermfg=67 ctermbg=152 cterm=NONE
hi Debug guifg=#e47a00 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#e6007b guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#e47a00 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi Conditional guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Todo guifg=#cc0707 guibg=#dbf3cd guisp=#dbf3cd gui=bold ctermfg=160 ctermbg=194 cterm=bold
hi Special guifg=#e47a00 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi LineNr guifg=#000000 guibg=#ffffff guisp=#ffffff gui=bold ctermfg=NONE ctermbg=15 cterm=bold
hi StatusLine guifg=#e6e6e6 guibg=#43c464 guisp=#43c464 gui=bold ctermfg=254 ctermbg=78 cterm=bold
hi Label guifg=#e6007b guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#ff2f25 guibg=#1b1b1b guisp=#949698 gui=NONE ctermfg=114 ctermbg=246 cterm=NONE
hi Search guifg=#ffffff guibg=#030303 guisp=#ffae00 gui=NONE ctermfg=52 ctermbg=214 cterm=NONE
hi Delimiter guifg=#e47a00 guibg=NONE guisp=NONE gui=bold ctermfg=172 ctermbg=NONE cterm=NONE
hi Statement guifg=#e25c09 guibg=NONE guisp=NONE gui=NONE ctermfg=166 ctermbg=NONE cterm=NONE
hi Comment guifg=#0075b9 guibg=NONE guisp=NONE gui=bold ctermfg=28 ctermbg=NONE cterm=bold
hi Character guifg=#0075b9 guibg=NONE guisp=NONE gui=NONE ctermfg=25 ctermbg=NONE cterm=NONE
hi Number guifg=#007ade guibg=NONE guisp=NONE gui=BOLD ctermfg=32 ctermbg=NONE cterm=NONE
hi Boolean guifg=#e25c09 guibg=NONE guisp=NONE gui=BOLD ctermfg=166 ctermbg=NONE cterm=NONE
hi Operator guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=#d0d9eb guisp=#d0d9eb gui=NONE ctermfg=NONE ctermbg=189 cterm=NONE
hi Define guifg=#e60008 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi Function guifg=#e6007b guibg=NONE guisp=NONE gui=BOLD ctermfg=161 ctermbg=NONE cterm=NONE
hi PreProc guifg=#e60008 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi VertSplit guifg=#2e7289 guibg=#3687a2 guisp=#3687a2 gui=NONE ctermfg=24 ctermbg=67 cterm=NONE
hi Exception guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Keyword guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Type guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Error guifg=#e6e6e6 guibg=#d40000 guisp=#d40000 gui=NONE ctermfg=254 ctermbg=160 cterm=NONE
hi PMenu guifg=#e6e6e6 guibg=#1b1b1b guisp=#cb2f27 gui=NONE ctermfg=254 ctermbg=1 cterm=NONE
hi Constant guifg=#0075b9 guibg=NONE guisp=NONE gui=BOLD ctermfg=25 ctermbg=NONE cterm=NONE
hi Tag guifg=#e47a00 guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
hi String guifg=#0075b9 guibg=NONE guisp=NONE gui=bold ctermfg=25 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi Repeat guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Structure guifg=#596055 guibg=NONE guisp=NONE gui=NONE ctermfg=59 ctermbg=NONE cterm=NONE
hi Macro guifg=#e60008 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi jinjafilter guifg=#e6007b guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=161 ctermbg=230 cterm=NONE
hi pythondoctest2 guifg=#317858 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
hi jinjaraw guifg=#919191 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=246 ctermbg=230 cterm=NONE
hi htmltagn guifg=#3e873e guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#d50000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi jinjaoperator guifg=#e6e6e6 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=254 ctermbg=230 cterm=NONE
hi jinjavarblock guifg=#e60008 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=160 ctermbg=230 cterm=NONE
hi jinjaattribute guifg=#c46900 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=1 ctermbg=230 cterm=NONE
hi pythondoctest guifg=#234636 guibg=NONE guisp=NONE gui=NONE ctermfg=23 ctermbg=NONE cterm=NONE
hi htmltagname guifg=#3e873e guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi jinjastring guifg=#0075b9 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=25 ctermbg=230 cterm=NONE
hi htmlspecialtagname guifg=#3e873e guibg=NONE guisp=NONE gui=NONE ctermfg=65 ctermbg=NONE cterm=NONE
hi pythonfunction guifg=#d50000 guibg=NONE guisp=NONE gui=NONE ctermfg=160 ctermbg=NONE cterm=NONE
hi jinjacomment guifg=#006f00 guibg=#002300 guisp=#002300 gui=italic ctermfg=22 ctermbg=22 cterm=NONE
hi jinjanumber guifg=#a6083d guibg=#fbf4c7 guisp=#fbf4c7 gui=bold ctermfg=125 ctermbg=230 cterm=bold
hi pythoncoding guifg=#e6007b guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi jinjatagblock guifg=#e60008 guibg=#fbf4c7 guisp=#fbf4c7 gui=bold ctermfg=160 ctermbg=230 cterm=bold
hi jinjastatement guifg=#e25c09 guibg=#fbf4c7 guisp=#fbf4c7 gui=bold ctermfg=166 ctermbg=230 cterm=bold
hi pythonbuiltinfunc guifg=#255a89 guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
hi htmltag guifg=#00a9d3 guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
hi pythonrun guifg=#e6007b guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi pythonclass guifg=#e6007b guibg=NONE guisp=NONE gui=NONE ctermfg=161 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#5ab45a guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi pythonbuiltinobj guifg=#255a89 guibg=NONE guisp=NONE gui=NONE ctermfg=24 ctermbg=NONE cterm=NONE
hi jinjaspecial guifg=#0081e4 guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=32 ctermbg=230 cterm=NONE
hi htmlendtag guifg=#00a9d3 guibg=NONE guisp=NONE gui=NONE ctermfg=38 ctermbg=NONE cterm=NONE
hi jinjavariable guifg=#81b42f guibg=#fbf4c7 guisp=#fbf4c7 gui=NONE ctermfg=70 ctermbg=230 cterm=NONE
