" vimrc
" Yeong Jin Gwak
" Last Edit : 2015. Jan. 21

set nocompatible              " be iMproved, required
filetype on                   " Solve troubleshooting on Mac
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Plugin 'lervag/vimtex'
Plugin 'LaTeX-Box-Team/LaTeX-Box'

let maplocalleader = "\\"
let g:LatexBox_Folding = 1
" Plugin 'vim-scripts/unilatex.vim'

"let vimtex_fold_enabled = 0

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

""""""""""""""""""""
"   File
""""""""""""""""""""
" set nocompatible          " kill for vundle
set backspace=indent,eol,start  " Backspace connect last line
set nobackup
set fileencodings=utf-8,cp949,defalut

""""""""""""""""""""
"   Edit
""""""""""""""""""""
"set autoindent
"set smartindent
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4

""""""""""""""""""""
"   Syntax
""""""""""""""""""""
syntax on
" filetype indent on        " kill for vumdle

"colorscheme p

""""""""""""""""""""
"   Display
""""""""""""""""""""
set display+=uhex
set ignorecase  " Ignore Case when Searching Patterns
set smartcase   " Override ignorecase when Capital letter is present
set hlsearch    " Highlight all its matches
set linebreak   " Linebreak at specific keyword
set background=dark
set title
set number
set showcmd
set showmatch

""""""""""""""""""""
"   Key Mapping
""""""""""""""""""""
"" General
command! W w " :W로 저장
command! Wq wq " : Wq -> wq

""  Moving Window
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

"" Tagging
""" ctag
set tags=./tags

""  File execute
""" C
"autocmd BufEnter,BufNew *.c map <F5> :w<CR>:!gcc % -o %< -O2 -W -Wall -g -lm<CR>:!./%<<CR>
"autocmd BufEnter,BufNew *.c imap <F5> <ESC>:w<CR>:!gcc % -o %< -O2 -W -Wall -g -lm<CR>:!./%<<CR>
"autocmd BufEnter,BufNew *.c map <F6> :w<CR>:!gcc % -o %< -O2 -W -Wall -g -lm<CR>
"autocmd BufEnter,BufNew *.c imap <F6> <ESC>:w<CR>:!gcc % -o %< -O2 -W -Wall -g -lm<CR>
"autocmd BufEnter,BufNew *.c map <F7> :w<CR>:!gcc -fopenmp % -o %< -O2 -W -Wall -g -lm<CR>:!./%<<CR>
"autocmd BufEnter,BufNew *.c imap <F7> <ESC>:w<CR>:!gcc -fopenmp % -o %< -O2 -W -Wall -g -lm<CR>:!./%<<CR>
"autocmd BufEnter,BufNew *.c map <F8> :w<CR>:!gcc -fopenmp % -o %< -O2 -W -Wall -g -lm<CR>
"autocmd BufEnter,BufNew *.c imap <F8> <ESC>:w<CR>:!gcc -fopenmp % -o %< -O2 -W -Wall -g -lm<CR>
"autocmd BufEnter,BufNew *.c map <F10> :w<CR>:!gcc -fopenmp % -o %< -O2 -W -Wall -g -pg -lm<CR>
"autocmd BufEnter,BufNew *.c imap <F10> <ESC>:w<CR>:!gcc -fopenmp % -o %< -O2 -W -Wall -g -pg -lm<CR>
"
"""" Ruby
"autocmd BufEnter,BufNew *.rb map <F5> :w<CR>:!ruby %<CR>
"autocmd BufEnter,BufNew *.rb imap <F5> <ESC>:w<CR>:!ruby %<CR>
"
"""" Python
"autocmd BufEnter,BufNew *.py map <F5> :w<CR>:!python %<CR>
"autocmd BufEnter,BufNew *.py imap <F5> <ESC>:w<CR>:!python %<CR>
"
"""" GNUplot
"autocmd BufEnter,BufNew *.gpl map <F5> :w<CR>:!gnuplot %<CR>
"autocmd BufEnter,BufNew *.gpl imap <F5> <ESC>:w<CR>:!gnuplot %<CR>
"
"""" LaTeX
"autocmd BufEnter,BufNew *.tex map <F5> :w<CR>:!pdflatex -output-dir=/tmp/ %<CR>
"autocmd BufEnter,BufNew *.tex imap <F5> <ESC>:w<CR>:!pdflatex -output-dir=/tmp/ %<CR>
