call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
colorscheme darkblue
"set mouse=a
set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
compiler ruby         " Enable compiler support for rubyo

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent

set nowrap

"autocompletion of begin, for, ...
imap <S-CR> <ESC>:execute 'normal o' . EndToken()<CR>O 


map <F3> :NERDTreeToggle<cr>
map <F4> :set nu!<cr>
map <F5> gg=G<cr>
set pastetoggle=<F11>
set tw=80
set showmatch
set virtualedit=all
"au Syntax * syn match Error /\s\+$/ | syn match Error /^\s* \t\s*/
set hlsearch
set ignorecase
set number

" TListPlugin
"let Tlist_Show_One_File = 1

" vimlatex
let g:tex_flavor='latex'
set grepprg=grep\ -nH\ $*
set iskeyword+=:
let g:Tex_AutoFolding=0


" spelling
"setlocal spell spelllang=en_us
setlocal spell spelllang=de
set invspell
nnoremap <C-down> ]s
nnoremap <C-up> [s
