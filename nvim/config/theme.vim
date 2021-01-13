syntax on
highlight LineNr ctermfg=white

" Sonokai
let g:sonokai_style = 'default' " defaut/atlantis/andromeda/shusia/mata
let g:sonokai_transparent_background = 0
colorscheme sonokai

" Polyglot
let g:polyglot_disabled = [
	\ 'autoindent',
	\ 'sensible'
  \ ]

" lightline
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'darcula',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste' ],
	\			[ 'gitbranch', 'readonly', 'filename', 'modified' ]
	\	]
	\ },
	\}

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
	let files = systemlist('git ls-files -m 2>/dev/null')
	return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
	let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
	return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
		\ { 'type': 'files',     'header': ['   MRU']            },
		\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
		\ { 'type': 'sessions',  'header': ['   Sessions']       },
		\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
		\ { 'type': function('s:gitModified'),  'header': ['   git modified']},
		\ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
		\ { 'type': 'commands',  'header': ['   Commands']       },
		\ ]

