set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name="bw"
let s:bg = {'gui': '#222222', 'cterm': 235}
let s:black = {'gui': '#1d1d1d', 'cterm': 247}
let s:fg = {'gui': '#ffffff', 'cterm': 247}
let s:grey = {'gui': '#cccccc', 'cterm': 247}
let s:light_grey = {'gui': '#e5e4e0', 'cterm': 247}
let s:dark_grey = {'gui': '#494949', 'cterm': 247}
let s:pink = {'gui': '#494949', 'cterm': 168}
let s:red = {'gui': '#e50030', 'cterm': 168}
let s:yellow = {'gui': '#ffc600', 'cterm': 168}
exec "hi Normal guifg=". s:grey.gui ." guibg=". s:bg.gui ." gui=italic ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm

exec "hi SpecialKey     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi NonText        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Directory      guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi ErrorMsg       guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi IncSearch      guifg=". s:yellow.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Search         guifg=". s:yellow.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi MoreMsg        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi ModeMsg        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi LineNr         guifg=". s:dark_grey.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Question       guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi StatusLine     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi StatusLineNC   guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi VertSplit      guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Title          guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Visual         guifg=". s:dark_grey.gui ." guibg=". s:black.gui ." gui=bold ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi VisualNOS      guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi WarningMsg     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi WildMenu       guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Folded         guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi FoldColumn     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi DiffAdd        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi DiffChange     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi DiffDelete     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi DiffText       guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Comment        guifg=". s:pink.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Constant       guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Special        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Identifier     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Statement      guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=bold ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi PreProc        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Type           guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Underlined     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Ignore         guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Error          guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Todo           guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm



exec "hi CursorLine guifg=NONE guibg=". s:black.gui ." gui=NONE ctermfg=NONE ctermbg=". s:black.cterm
exec "hi CursorLineNr guifg=". s:fg.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:black.cterm ." ctermbg=". s:black.cterm

exec "hi CursorColumn guifg=". s:fg.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:black.cterm ." ctermbg=". s:black.cterm

exec "hi TabLine guifg=". s:dark_grey.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:grey.cterm
exec "hi TabLineFill guifg=". s:dark_grey.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:bg.cterm ." ctermbg=". s:grey.cterm
exec "hi TabLineSel guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm

exec "hi PMenu guifg=". s:black.gui ." guibg=". s:light_grey.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi PMenuSbar guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi PMenuSel guifg=". s:fg.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi PMenuThumb guifg=". s:fg.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm

exec "hi StatusLine guifg=". s:dark_grey.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi StatusLineNC guifg=". s:fg.gui ." guibg=". s:black.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm

