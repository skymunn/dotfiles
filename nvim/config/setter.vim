set autoindent
set number
set cul
set ttyfast
set cursorline
set smartindent
set linebreak
set showmatch
set showtabline=1
set mouse=a
set ts=2 sw=2
set wrap!
set cmdheight=1
set hidden
set nobackup
set nowritebackup
set updatetime=300
set shortmess+=c

if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=yes
endif

