" Vim color file - northpole
" Name:       northpole.vim
" Maintainer: https://github.com/Alvarocz/
" Url: https://github.com/Alvarocz/vim-northpole
" License:    The MIT License (MIT)

set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "northpole"

" Palette
let s:bg = {'gui': '#222222', 'cterm': 234}
let s:fg = {'gui': '#ffffff', 'cterm': 247}
let s:white = {'gui': '#ffffff', 'cterm': 15}
let s:light_gray = {'gui': '#ffffff', 'cterm': 252}
let s:pink = {'gui': '#ff0996', 'cterm': 168}
let s:grey_line = {'gui': '#46474c', 'cterm': 168}

"hi Directory 
exec "hi Boolean guifg=". s:white.gui ." guibg=NONE gui=bold ctermfg=". s:white.cterm"
exec "hi Builtin guifg=". s:white.gui ." guibg=NONE gui=bold ctermfg=". s:white.cterm"
exec "hi Character guifg=#ff9800 guibg=NONE gui=NONE ctermfg=208"
exec "hi Comment guifg=". s:pink.gui ." guibg=NONE gui=italic ctermfg=". s:pink.cterm"
exec "hi Conditional guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi ColorColumn guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=NONE ctermbg=". s:white.cterm"
exec "hi Constant guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi cursorim guifg=#192224 guibg=#536991 gui=NONE ctermfg=235 ctermbg=60"
exec "hi CursorLine guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=NONE ctermbg=". s:white.cterm"
exec "hi CursorLineNr guifg=". s:white.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:white.cterm"
exec "hi CursorColumn guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=NONE ctermbg=". s:white.cterm"
exec "hi Cursor guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=NONE ctermbg=241"
exec "hi Debug guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Define guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Delimiter guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
"hi EnumerationName 
"hi EnumerationValue 
exec "hi Error guifg=". s:bg.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:white.cterm"
exec "hi ErrorMsg guifg=". s:white.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:white.cterm"
exec "hi Exception guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Float guifg=". s:white.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:white.cterm"
"hi FoldColumn 
exec "hi Folded guifg=#a0a8b0 guibg=#384048 gui=NONE ctermfg=103 ctermbg=238"
exec "hi Function guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Identifier guifg=". s:fg.gui ." guibg=NONE gui=NONE cterm=NONE ctermfg=". s:fg.cterm"
"hi Ignore 
exec "hi Import guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Include guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi IncSearch guifg=". s:white.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:white.cterm"
exec "hi Keyword guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Label guifg=#7e8aa2 guibg=NONE gui=NONE ctermfg=103"
exec "hi LineNr guifg=". s:grey_line.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:white.cterm"
exec "hi Macro guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi MatchParen guifg=". s:bg.gui ." guibg=". s:white.gui ." gui=bold cterm=bold ctermfg=". s:bg.cterm ." ctermbg=". s:white.cterm"
exec "hi NonText guifg=#808080 guibg=#202020 gui=NONE ctermfg=8 ctermbg=234"
exec "hi Normal guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm"
exec "hi Number guifg=". s:white.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:white.cterm"
exec "hi Operator guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi PMenu guifg=". s:white.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:white.cterm"
exec "hi PMenuSbar guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=NONE ctermbg=". s:white.cterm"
exec "hi PMenuSel guifg=#000000 guibg=". s:white.gui ." gui=NONE ctermfg=NONE ctermbg=". s:white.cterm"
exec "hi PMenuThumb guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=NONE ctermbg=". s:white.cterm"
exec "hi PreCondit guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi PreProc guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Question guifg=". s:white.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:white.cterm"
exec "hi Repeat guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Search guifg=". s:white.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:white.cterm"
"hi SignColumn 
exec "hi Special guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi SpecialChar guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi SpecialComment guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi SpecialKey guifg=". s:white.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:white.cterm"
exec "hi Statement guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi StatusLine guifg=". s:white.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:white.cterm"
exec "hi StatusLineNC guifg=". s:white.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:white.cterm"
exec "hi StorageClass guifg=". s:white.gui ." guibg=NONE gui=bold ctermfg=". s:white.cterm"
exec "hi String guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Structure guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi TabLine guifg=". s:grey_line.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:white.cterm"
exec "hi TabLineFill guifg=". s:grey_line.gui ." guibg=". s:white.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:white.cterm"
exec "hi TabLineSel guifg=". s:white.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:white.cterm ." ctermbg=". s:bg.cterm"
exec "hi Tag guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=208"
exec "hi Title guifg=". s:fg.gui ." guibg=NONE gui=bold cterm=bold ctermfg=". s:fg.cterm"
exec "hi Todo guifg=#8f8f8f guibg=NONE gui=NONE ctermfg=245"
exec "hi Type guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi Typedef guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=103"
"hi Underlined 
"hi Union 
exec "hi VertSplit guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=238 ctermbg=". s:white.cterm"
exec "hi Visual guifg=NONE guibg=". s:white.gui ." gui=NONE ctermfg=0 ctermbg=". s:white.cterm"
"hi WarningMsg 
"hi WildMenu 
" Python
exec "hi pythonDecorator guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi pythonDecoratorName guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi pythonexception guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi pythonexclass guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"

" HTML
exec "hi htmlTag guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi htmlTagName guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"
exec "hi htmlArg guifg=". s:white.gui ." guibg=NONE gui=NONE ctermfg=". s:white.cterm"

" TODO: Add support for css

" Diff
exec "hi DiffAdd guifg=NONE guibg=". s:white.gui ." ctermbg=". s:white.cterm"
exec "hi DiffChange guifg=NONE guibg=". s:white.gui ." ctermbg=". s:white.cterm"
exec "hi DiffDelete guifg=NONE guibg=". s:white.gui ." ctermbg=". s:white.cterm"
