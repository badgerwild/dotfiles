filetype off
syntax on
filetype plugin indent on
set encoding=utf-8
call plug#begin()
"syntax highlighting for most every language
Plug 'sheerun/vim-polyglot'
"Really good pluging for latex
Plug 'lervag/vimtex'
"handles linters for multiple languages
Plug 'dense-analysis/ale'
"sidebar File navigation tree
Plug 'scrooloose/nerdtree'
"color theme
Plug 'morhetz/gruvbox'
"latex plugin
Plug 'lervag/vimtex'
"better looking bar
Plug 'itchyny/lightline.vim'
call plug#end()
set number 
"settings for vimtex
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='adbmg'

"setting linters and fixers for ale
let g:ale_linters= {'ruby': ['ruby', 'rubocop', 'reek'], 'C':['clang'], 'javascript':['eslint']}
let g:ale_fixers= {'python': ['yapf']}
"disable polyglot for latex
let g:polyglot_disabled= ['latex']
colorscheme gruvbox
set bg=dark
set laststatus=2
