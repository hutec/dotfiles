set t_Co=256
let base16colorspace=256
let g:base16_shell_path="$HOME/.config/base16-shell/"

execute pathogen#infect()
syntax on
colorscheme base16-3024
set background=dark

set nocompatible


" if strftime("%H") < 12
"     set background=light
" else 
"     set background=dark
" endif
"
filetype plugin indent on

syntax enable
set t_Co=256
let g:airline_powerline_fonts=1
":set cursorline

"colorscheme solarized
"if has('gui_running')
"    set background=light
"else
"    set background=dark


set runtimepath^=~/.vim/bundle/ctrlp.vim
"call togglebg#map("<F5>")
nmap <F8> :TagbarToggle<CR>

set number

set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set smarttab
set laststatus=2


:noremap j h
:noremap k j
:noremap l k
:noremap ö l

:noremap <C-W>j <C-W>h
:noremap <C-W>k <C-W>j
:noremap <C-W>l <C-W>k
:noremap <C-W>ö <C-W>l

let g:goyo_linenr=1

nnoremap <silent> <C-S> :if expand("%") == ""<CR>browse confirm w<CR>else<CR>confirm w<CR>endif<CR>

"nnoremap <esc> :noh<return><esc>

set mouse=a

" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

au BufNewFile,BufRead *.tex,*.py set colorcolumn=100
au BufNewFile,BufRead *.tex,*.py set textwidth=100

au BufEnter *.tex set autowrite
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
let g:Tex_ViewRule_pdf = 'okular'


"Ignore for ctrlp
let g:ctrlp_custom_ignore = '\v\.(aux|pdf)$'

"remove latex underscore highlighting
let g:tex_no_error=1
map <F6> :! pdflatex bachelorarbeit.tex <CR>
map <F7> :! pdftotext bachelorarbeit.pdf - \| wc -w <CR>
map <C-c> :normal i %============================================================<ESC>


let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_level = 1
