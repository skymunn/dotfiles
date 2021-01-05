" explorer
nnoremap <space>e :CocCommand explorer<CR>
" Open coc diagnostic
nnoremap <space>d :CocCommand diagnostic<CR>
" save file
map <C-s> :w<CR>
" undo redo
map <C-z> :undo<CR>
map <S-z> :redo<CR>
" fixing X can cut
map x "_d<CR>
" Escape from terminal
tmap <Esc> <C-\><C-n>
" Resize vertical window
nmap <A-h> :vertical resize +1<CR>
nmap <A-l> :vertical resize -1<CR>
" Auto brace
inoremap { {}<Esc>i
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
" Diagnostic
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" Definition overload
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
