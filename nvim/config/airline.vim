let g:airline_powerline_fonts = 1

" Bottom Separator
let g:airline_left_sep = "\uE0B0"
let g:airline_right_sep = "\uE0B2"

" Column Number
let g:airline_section_z = airline#section#create(['%{line(".")}' . " \uE0C7\uE0C6 " . '%{col(".")}'])

" Trailing
let g:airline#extensions#whitespace#enabled = 0

" Tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0                                           
let g:airline#extensions#tabline#tabs_label = ''
let g:airline#extensions#tabline#buffers_label = ''     
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_count = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0

