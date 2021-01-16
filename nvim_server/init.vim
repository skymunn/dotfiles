call plug#begin('~/.vim/plug')
Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" make vim startup more faster
let skip_defaults_vim=1
set viminfo=""

set number
set textwidth=79
set showmatch
set mouse=a
set wrap!

syntax on
colorscheme simpleblack
highlight LineNr ctermfg=gray
filetype plugin indent on
set showtabline=2
 
set hlsearch
set smartcase
set ignorecase
set incsearch

set autoindent
set ts=2 sw=2
set expandtab

" set et  " uncomment to use space instead of tab
set smartindent
set smarttab
set noswapfile

" hide number in terminal
autocmd TermOpen * setlocal nonumber norelativenumber

map <C-x> :q<CR>
tmap <Esc> <C-\><C-n>
nmap <A-l> :vertical resize +1<CR>
nmap <A-h> :vertical resize -1<CR>

