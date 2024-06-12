
call plug#begin(expand('~/.config/nvim/plugged'))

"============================================================================
"" Plugins
"============================================================================
Plug 'neoclide/coc.nvim', {'branch': 'release'}                           " https://github.com/neoclide/coc.nvim
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }               " https://github.com/Shougo/denite.nvim
" parentheses automatique
Plug 'jiangmiao/auto-pairs'
"jsx react
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'
" grep
Plug 'mhinz/vim-grepper'
" mettre en évidence la couleur
Plug 'norcalli/nvim-colorizer.lua'
" indent guides
Plug 'preservim/vim-indent-guides'
Plug 'ervandew/supertab'
Plug 'kien/ctrlp.vim'
Plug 'shime/vim-livedown'
" mettre en évidence la couleur
Plug 'norcalli/nvim-colorizer.lua'
"" COLORSCHEME""
Plug 'ayu-theme/ayu-vim'
Plug 'Mizux/vim-colorschemes'
Plug 'ray-x/aurora'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'severij/vadelma'
Plug 'wesQ3/wombat.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'jacoborus/tender.vim'
Plug 'catppuccin/vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'chriskempson/base16-vim'
call plug#end()

" ============================================================================ "
" ===                           DENITE SETUP                               === "
" ============================================================================ "
" Wrap in try/catch to avoid errors on initial install before plugin is available
" === Denite setup ==="
try
    " Use ripgrep for searching current directory for files
    " By default, ripgrep will respect rules in .gitignore
    "   --files: Print each file that would be searched (but don't search)
    "   --glob:  Include or exclues files for searching that match the given glob
    "            (aka ignore .git files)
    "
    call denite#custom#var('file/rec', 'command', ['rg', '--files', '--glob', '!.git', "--ignore='package-lock.json'"])

    " Use ripgrep in place of 'grep'
    call denite#custom#var('grep', 'command', ['rg'])

    " Custom options for ripgrep
    "   --vimgrep:  Show results with every match on it's own line
    "   --hidden:   Search hidden directories and files
    "   --heading:  Show the file name above clusters of matches from each file
    "   --S:        Search case insensitively if the pattern is all lowercase
    call denite#custom#var('grep', 'default_opts', ['--hidden', '--vimgrep', '--heading', '-S'])

    " Recommended defaults for ripgrep via Denite docs
    call denite#custom#var('grep', 'recursive_opts', [])
    call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
    call denite#custom#var('grep', 'separator', ['--'])
    call denite#custom#var('grep', 'final_opts', [])

    " Remove date from buffer list
    call denite#custom#var('buffer', 'date_format', '')

    " Custom options for Denite
    "   split                       - Use floating window for Denite
    "   start_filter                - Start filtering on default
    "   auto_resize                 - Auto resize the Denite window height automatically.
    "   source_names                - Use short long names if multiple sources
    "   prompt                      - Customize denite prompt
    "   highlight_matched_char      - Matched characters highlight
    "   highlight_matched_range     - matched range highlight
    "   highlight_window_background - Change background group in floating window
    "   highlight_filter_background - Change background group in floating filter window
    "   winrow                      - Set Denite filter window to top
    "   vertical_preview            - Open the preview window vertically

    let s:denite_options = {'default' : {
                \ 'split': 'floating',
                \ 'start_filter': 1,
                \ 'auto_resize': 1,
                \ 'source_names': 'short',
                \ 'prompt': 'λ ',
                \ 'highlight_matched_char': 'QuickFixLine',
                \ 'highlight_matched_range': 'Visual',
                \ 'highlight_window_background': 'Visual',
                \ 'highlight_filter_background': 'DiffAdd',
                \ 'winrow': 1,
                \ 'vertical_preview': 1
                \ }}

    " Loop through denite options and enable them
    function! s:profile(opts) abort
        for l:fname in keys(a:opts)
            for l:dopt in keys(a:opts[l:fname])
                call denite#custom#option(l:fname, l:dopt, a:opts[l:fname][l:dopt])
            endfor
        endfor
    endfunction

    call s:profile(s:denite_options)
catch
    echo 'Denite not installed. It should work after running :PlugInstall'
endtry

" === key mappings === "
"   ;         - Browser currently open buffers
"   <leader>t - Browse list of files in current directory
"   <leader>g - Search current directory for occurences of given term and close window if no results
"   <leader>j - Search current directory for occurences of word under cursor
nmap ; :Denite buffer<CR>
nmap <leader>t :DeniteProjectDir file/rec<CR>
nnoremap <leader>g :<C-u>Denite grep:. -no-empty<CR>
nnoremap <leader>j :<C-u>DeniteCursorWord grep:.<CR>

" Define mappings while in 'filter' mode
"   <C-o>         - Switch to normal mode inside of search results
"   <Esc>         - Exit denite window in any mode
"   <CR>          - Open currently selected file in any mode
"   <C-t>         - Open currently selected file in a new tab
"   <C-v>         - Open currently selected file a vertical split
"   <C-h>         - Open currently selected file in a horizontal split
autocmd FileType denite-filter call s:denite_filter_my_settings()
function! s:denite_filter_my_settings() abort
    "  imap <silent><buffer> <C-o>
    "  \ <Plug>(denite_filter_quit)
    imap <silent><buffer> <C-o>
                \ <Plug>(denite_filter_update)
    inoremap <silent><buffer><expr> <Esc>
                \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> <Esc>
                \ denite#do_map('quit')
    inoremap <silent><buffer><expr> <CR>
                \ denite#do_map('do_action')
    inoremap <silent><buffer><expr> <C-t>
                \ denite#do_map('do_action', 'tabopen')
    inoremap <silent><buffer><expr> <C-v>
                \ denite#do_map('do_action', 'vsplit')
    inoremap <silent><buffer><expr> <C-h>
                \ denite#do_map('do_action', 'split')
endfunction

" Define mappings while in denite window
"   <CR>        - Opens currently selected file
"   q or <Esc>  - Quit Denite window
"   d           - Delete currenly selected file
"   p           - Preview currently selected file
"   <C-o> or i  - Switch to insert mode inside of filter prompt
"   <C-t>       - Open currently selected file in a new tab
"   <C-v>       - Open currently selected file a vertical split
"   <C-h>       - Open currently selected file in a horizontal split
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
                \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> q
                \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> <Esc>
                \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> d
                \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
                \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> i
                \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <C-o>
                \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <C-t>
                \ denite#do_map('do_action', 'tabopen')
    nnoremap <silent><buffer><expr> <C-v>
                \ denite#do_map('do_action', 'vsplit')
    nnoremap <silent><buffer><expr> <C-h>
                \ denite#do_map('do_action', 'split')
endfunction

" ============================================================================ "
" ===                             COC SETUP                                === "
" ============================================================================ "
" === Coc.nvim === "
" use <tab> for trigger completion and navigate to next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

" Use <Tab> and <S-Tab> to navigate the completion list:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"Close preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" === key mappings === "
"   <leader>dd    - Jump to definition of current symbol
"   <leader>dy    - Jump to type definition of current symbol
"   <leader>dr    - Jump to references of current symbol
"   <leader>dj    - Jump to implementation of current symbol
"   <leader>ds    - Fuzzy search current project symbols
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dy <Plug>(coc-type-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)
nnoremap <silent> <leader>ds :<C-u>CocList -I -N --top symbols<CR>

" Use `[g` and `]g` to navigate diagnostics
" nmap <silent> [g <Plug>(coc-diagnostic-prev)
" nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> <leader>< <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>> <Plug>(coc-diagnostic-next)

let g:coc_global_extensions = [
            \ 'coc-css',
            \ 'coc-eslint',
            \ 'coc-git',
            \ 'coc-json',
            \ 'coc-markdownlint',
            \ 'coc-prettier',
            \ 'coc-pyright',
            \ 'coc-snippets',
            \ 'coc-tsserver',
            \ 'coc-vetur'
            \ ]

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? '\<C-n>' :
"       \ <SID>check_back_space() ? '\<TAB>' :
"       \ coc#refresh()
" test. might need to delete
" inoremap <expr><S-TAB> pumvisible() ? '\<C-p>' : '\<C-h>'

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" Use <c-space> to trigger completion.
" inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
" inoremap <expr> <cr> pumvisible() ? '\<C-y>' : '\<C-g>u\<CR>'

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent>,a :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent>,e :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent>,c :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent>,o :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent>,s :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent>,j :<C-u>CocNext<cr>
" Do default action for previous item.
nnoremap <silent>,k :<C-u>CocPrev<cr>
" Resume latest coc list
nnoremap <silent>,p :<C-u>CocListResume<cr>
let g:coc_disable_startup_warning = 1

" ============================================================================ "

"============================================================================
" ===                      VIM-BASIC SETUP                               === "
"*****************************************************************************
" Set encoding to UTF-8
set encoding=utf-8

" Enable syntax highlighting
syntax on

" Enable file type detection and plugin loading
filetype plugin indent on

" Set leader key to space
let mapleader = " "

" Enable mouse control
set mouse=a

set relativenumber
set cursorline
set ignorecase
set so=999
set shell=fish
"" Tabs. May be overridden by autocmd rules
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
" "show matching bracets
set showmatch

"============================================================================
" ===                      VIM-EXPERT SETUP                               === "
"============================================================================
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set ttyfast
set wildmenu
set wildmode=longest:full,full
set wildignorecase

if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif

set scrolloff=999

noremap YY "+y<CR>
noremap <leader>p "+gP<CR>
noremap XX "+x<CR>

" format on save
autocmd BufWritePre * :normal gg=G

" Remember cursor position
augroup vimrc-remember-cursor-position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" Include user's local vim config
if filereadable(expand("~/.config/nvim/local_init.vim"))
    source ~/.config/nvim/local_init.vim
endif

" Session management
let g:session_directory = "~/.config/nvim/session"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1


" pour avoir les lignes indentées au démarrage
let g:indent_guides_enable_on_vim_startup = 1

"============================================================================
" ===                      COLORSCHEME                                    === "
"============================================================================
set termguicolors
colorscheme ayu
set guioptions=egmrti

"if has("gui_running")
"    if has("gui_mac") || has("gui_macvim")
"        set guifont=Menlo:h12
"        set transparency=7
"    endif
"else
"    let g:CSApprox_loaded = 1
"    let g:indentLine_enabled = 1
"    let g:indentLine_concealcursor = 0
"    let g:indentLine_char = '┆'
"    let g:indentLine_faster = 1
"
"    if $COLORTERM == 'gnome-terminal'
"        set term=gnome-256color
"    else
"        if $TERM == 'xterm'
"            set term=xterm-256color
"        endif
"    endif
"endif

if &term =~ '256color'
    set t_ut=
endif

"============================================================================
"" AUTOMATIQUEMENT RECHARGER INIT.VIM LORSQUE L'ON SAUVEGARDE
"============================================================================
augroup reload_vimrc
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END

"============================================================================
"" RACCOURCIS CLAVIERS
"============================================================================
xnoremap <C-S-Up> xkP`[V`]
xnoremap <C-S-Down> xp`[V`]
xnoremap <C-S-Left> <gv
xnoremap <C-S-Right> >gv

nnoremap <C-S-Up> ddkP`[V`]
nnoremap <C-S-Down> xp`[V`]
nnoremap <C-S-Left> <gv
nnoremap <C-S-Right> >gv

"nnoremap <C-o> :vsplit<CR>:terminal sh -c 'npm run start'<CR>
"nnoremap <C-o> :lcd %:p:h<CR>:vsplit<CR>i sh -c 'ls'<CR>i
" For completion with Tab
imap <Tab> <Enter>

if !exists(':C')
    command C vsplit ~/.config/nvim/init.vim
endif

if !exists(':T')
    command T :terminal
endif

let g:SuperTabDefaultCompletionType = '<c-n>'
let g:SuperTabDefaultCompletionType = 'context'
" Map Ctrl+n to split the window vertically, open a terminal, and execute 'ls'
nnoremap <C-o> :split<CR><C-w>j:terminal<CR>i npm run start<CR>
