"" Maintainer: 
"       Gregory Dailly
"
" Sections:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" " the call to :runtime you can find below.  If you wish to change any of
" those
" " settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" " will be overwritten everytime an upgrade of the vim packages is performed.
" " It is recommended to make changes after sourcing debian.vim since it
" alters
" " the value of the 'compatible' option.
"
" " This line should not be removed as it ensures that various options are
" " properly set to work with the Vim-related packages available in Debian.
" runtime! debian.vim
"
" " Uncomment the next line to make Vim more Vi-compatible
" " NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes
" numerous
" " options, so any other options should be set AFTER setting 'compatible'.
" "set compatible
"
" " Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
"reconnaissance de la syntaxe lua
syntax on
set syntax=lua
" if has("syntax")
"  syntax on
" endif
"
"   " If using a dark background within the editing area and syntax
"   highlighting
"   " turn on this option as well
set background=dark
"
"   " Uncomment the following to have Vim jump to the last position when
"   " reopening a file
"   "if has("autocmd")
"   "  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe
"normal! g'\"" | endif
""endif

" Uncomment the following to have Vim load indentation rules and plugins
" " according to the detected filetype.
" "if has("autocmd")
" "  filetype plugin indent on
" "endif
"
" " The following are commented out as they cause vim to behave a lot
" " differently from regular Vi. They are highly recommended though.
" "set showcmd" Show (partial) command in status line.
" "set showmatch" Show matching brackets.
" "set ignorecase" Do case insensitive matching
" "set smartcase" Do smart case matching
" "set incsearch" Incremental search
" "set autowrite" Automatically save before commands like :next and :make
" "set hidden" Hide buffers when they are abandoned
set mouse=a
"
" " Source a global configuration file if available
" if filereadable("/etc/vim/vimrc.local")
"   source /etc/vim/vimrc.local
"   endif
"     "
" Sets how many lines of history VIM has to remember
set history=1400

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

set showcmd
" pour avoir une liste des commandes en complétions dans la status line
set wildmenu
" Ignore case when searching
set ignorecase
""pour activer le copier coller
set clipboard=unnamedplus
set autoindent

"" pour ne pas voir le menu bar dans gvim
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar



""let g:indent_guides_enable_on_vim_startup = 1 
""let g:indent_guides_start_level = 1 
""let g:indent_guides_guide_size = 1 

""pour avoir les guides d'indentation
""let g:indent_guides_auto_colors = 0
""autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
""autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
""hi IndentGuidesOdd  ctermbg=black
""hi IndentGuidesEven ctermbg=darkgrey

""Automatically exit insert mode when you use up and donw arrows
inoremap <silent> <Up> <Esc><Up>
inoremap <silent> <Down> <Esc><Down>
"" Easier split naviguations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"" more natural split opening
set splitbelow
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
set syntax=lua
set antialias

" tabgbar pour avoir les symboles au lancement
""autocmd VimEnter * Tagbar

""pour avoir un escape reactif
:set timeoutlen=10 ttimeoutlen=0

execute pathogen#infect()
"colorscheme
colorscheme uniformity

"fold
"set foldmethod=indent

set laststatus=2
	au InsertEnter * set nocursorline 
	au InsertLeave * set cursorline

"changer couleur du background en insert mode
""au InsertEnter * hi Normal ctermbg=16 guibg=#000000
"au InsertEnter * hi Normal ctermbg=233 guibg=#001000 
"au InsertLeave * hi Normal ctermbg=233 guibg=#1b1d1e

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

" pour ne pas avoir de background et profiter ainsi de la couleur du terminal
hi Normal ctermbg=none

" pour avoir une ligne surbrillante lorsqu'on est en insert mode
set cursorline
hi CursorLine term=bold cterm=bold guibg=#2c2e3e

:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=gray guibg=darkred guifg=white

"personnaliser le curseur
highlight Cursor guifg=white guibg=red
highlight iCursor guifg=white guibg=red
"retour de tab
set list lcs=tab:\:\     

" changer couleur du curseur
if &term =~ "xterm\\|rxvt"
	" use an orange cursor in insert mode
	let &t_SI = "\<Esc>]12;orange\x7"
	" use a red cursor otherwise
	let &t_EI = "\<Esc>]12;red\x7"
	silent !echo -ne "\033]12;red\007"
	"           " reset cursor when vim exits
	autocmd VimLeave * silent !echo -ne "\033]112\007"
	" use \003]12;gray\007 for gnome-terminal
endif

" Affiche toujours 10 lignes avant et après le curseur
set scrolloff=10

" Autorise le passage d'une ligne à l'autre avec les flèches gauche et droite
set whichwrap=<,>,[,]

" Applique automatiquement les modifications du .vimrc
if has("autocmd")
	autocmd! bufwritepost .vimrc source ~/.vimrc
endif
" ----------------------------------------
if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
          \ | wincmd p | diffthis
endif

" first, enable status line always
set laststatus=2
"pour mettre les éléments en supportrbrillance
set hlsearch
" pour avoir les numéros de lignes
set number
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif
" Remember info about open buffers on close
set viminfo^=%
set hidden
"Scroll Wheel = Up/Down 4 lines
"  Shift + Scroll Wheel = Up/Down 1 page
"Control + Scroll Wheel = Up/Down 1/2 page
" Meta + Scroll Wheel = Up/Down 1 line
"commande perso
"
" map CTRL-A to beginning-of-line (insert mode)

nmap <C-a> <esc>gg0<S-v><S-g>==<C-o><C-o><C-o>

nmap <F2> <esc>mx gg<C-v>GG == 'x

" ouvrir des fichiers avec casse insensible
set wildignorecase

"insérer des lignes sans comment auto
autocmd FileType * set formatoptions-=c formatoptions-=r formatoptions-=o


