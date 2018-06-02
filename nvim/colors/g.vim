"solarized-dark - Created with Koeeoadi


set background=dark


if version > 580

  hi clear

  if exists("syntax_on")

    syntax reset

  endif

endif


hi Normal  guifg=#daf4eb guibg=#17191c

hi Comment gui=bold guifg=#5af88e 

hi Type  guifg=#268bd2 

hi Constant gui=bold guifg=#268bd2 

hi Operater  guifg=#d33682 

hi Statement  guifg=#d33682 

hi Define  guifg=#d33682 

hi Conditional  guifg=#d33682 

hi String  guifg=#eaff61 

hi Keyword  guifg=#d33682 

hi Label  guifg=#eaff61 

hi Include  guifg=#d33682 

hi Tag  guifg=#d33682 

hi PreProc  guifg=#d33682 

hi PreCondit  guifg=#d33682 

hi Function  guifg=#268bd2 

hi Repeat  guifg=#d33682 

hi Macro  guifg=#d33682 

hi Float gui=bold guifg=#268bd2 

hi Identifier  guifg=#eaff61 

hi Exception  guifg=#d33682 

hi tab  guifg=#767bd7
