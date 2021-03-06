""interface
set encoding=utf8
set mouse=a
set noswapfile
set autoindent
set clipboard=unnamedplus
" recherche incrementielle
set incsearch
set cursorline
" insensible à la casse dans les recherches
set ignorecase
" insensible à la casse dans les chemins
set wildignorecase
"" true color
" vertical line to show position
set cursorcolumn

" to center always the view
set so=999
" relative number
set number 
set relativenumber
" COLORS
set background=dark
colorscheme onedark
syntax on
set termguicolors
set guifont=fontAwesome:h9

" PERSONAL COMMAND
" open snippets for phaser in a vertical split
command Pref vsplit ~/.vim/plugged/vim-snippets/snippets/javascript/javascript-phaser.snippets
command Config vsplit ~/.config/nvim/init_vim

" CUSTOM KEYBINDING
"NORMAL MODE
nnoremap <C-Up> VDkPk <CR>
nnoremap <C-Down> VDjPj <CR>
nnoremap <C-a> ggVG <CR>
nnoremap <C-=> G=gg <CR>
map <F2> :TernDoc<CR>

"INSERT MODE
inoremap <C-Space> <C-x><C-o>

" Plugins will be downloaded under the specified directory.
call plug#begin('$HOME/.vim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" DECLARE THE LIST OF PLUGINS.
Plug 'ternjs/tern_for_vim'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'rhysd/github-complete.vim'
Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'vim-scripts/indenthtml.vim'
Plug 'walm/jshint.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
"Plug 'majutsushi/tagbar'

" COLORS THEMES

Plug 'drewtempelmeyer/palenight.vim'
Plug 'thenewvu/vim-colors-sketching'
Plug 'tyrannicaltoucan/vim-deep-space'
"Plug 'joshdick/onedark.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" SUPERTAB
"scroll from top to bottom
"let g:SuperTabDefaultCompletionType = "<c-n>"

let g:python_host_prog  = '/usr/bin/python2.7'
let g:python3_host_prog  = '/usr/bin/python3.6'

"peut etre à supprimer
noautocmd
"" start deoplete at startup
let g:deoplete#enable_at_startup = 1

set statusline+=%#warningmsg#
set statusline+=%*
"" disable autocomment when insert line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Automatically reload vimrc when it's saved
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC nested source $MYVIMRC
augroup END
"COMMANDES POUR SYNTASTIC
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" COMMANDES UTILES
" yi( copier à l'intérieur de la parenthèse
" ya( copier à toute la parenthèse
" ya( coper
" Markdown
"sudo npm install -g livedown
"livedown start es.md --port 4242 --open"
nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>
