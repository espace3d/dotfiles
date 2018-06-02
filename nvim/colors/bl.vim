" Vim color file
" Maintainer:   Hans Fugal <hans@fugal.net>
" Last Change:  5 Oct 2001
" URL:      http://fugal.net/vim/colors/bw.vim

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors
"
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
    syntax reset
    endif
endif
let g:colors_name="bw"
let s:bg = {'gui': '#1e1f25', 'cterm': 234}
let s:fg = {'gui': '#ffffff', 'cterm': 247}

exec "hi SpecialKey     guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi NonText        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Directory      guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi ErrorMsg       guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi IncSearch      guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi Search         guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi MoreMsg        guifg=". s:fg.gui ." guibg=". s:bg.gui ." gui=NONE ctermfg=". s:fg.cterm ." ctermbg=". s:bg.cterm
exec "hi ModeMsg        cterm=bold            ctermfg=NONE
exec "hi LineNr         cterm=underline       ctermfg=NONE
exec "hi Question       cterm=standout        ctermfg=NONE
exec "hi StatusLine     cterm=bold,reverse    ctermfg=NONE
exec "hi StatusLineNC   cterm=reverse     ctermfg=NONE
exec "hi VertSplit      cterm=reverse     ctermfg=NONE
exec "hi Title          cterm=bold        ctermfg=NONE
exec "hi Visual         cterm=reverse     ctermfg=NONE
exec "hi VisualNOS      cterm=bold,underline  ctermfg=NONE
exec "hi WarningMsg     cterm=standout    ctermfg=NONE
exec "hi WildMenu       cterm=standout    ctermfg=NONE
exec "hi Folded         cterm=standout    ctermfg=NONE
exec "hi FoldColumn     cterm=standout    ctermfg=NONE
exec "hi DiffAdd        cterm=bold            ctermfg=NONE
exec "hi DiffChange     cterm=bold            ctermfg=NONE
exec "hi DiffDelete     cterm=bold            ctermfg=NONE
exec "hi DiffText       cterm=reverse         ctermfg=NONE
exec "hi Comment        cterm=bold            ctermfg=NONE
exec "hi Constant       cterm=underline   ctermfg=NONE
exec "hi Special        cterm=bold        ctermfg=NONE
exec "hi Identifier     cterm=underline   ctermfg=NONE
exec "hi Statement      cterm=bold        ctermfg=NONE
exec "hi PreProc        cterm=underline   ctermfg=NONE
exec "hi Type           cterm=underline   ctermfg=NONE
exec "hi Underlined     cterm=underline   ctermfg=NONE
exec "hi Ignore         cterm=bold        ctermfg=NONE
exec "hi Error          cterm=reverse     ctermfg=NONE
exec "hi Todo           cterm=standout    ctermfg=NONE
