"" colorscheme default
"" set tabstop=2
"" set autoindent
"" set shiftwidth=2
"" set cindent
"" set smarttab
"" set number

set guifont=Droid\ Sans\ Mono\ 8
"set guifont=Terminus\ 10
color molokai
let g:Tex_ViewRule_dvi='evince'
let g:Tex_ViewRule_pdf='evince'
let g:Tex_ViewRule_ps='evince'
let g:Tex_MultipleCompileFormats='dvi,pdf'
let g:Tex_DefaultTargetFormat='pdf'

"highlight OverLength ctermbg=darkred ctermfg=red guibg=#FFD9D9
highlight OverLength ctermbg=darkred ctermfg=red guibg=#226666
match OverLength /\%81v./
