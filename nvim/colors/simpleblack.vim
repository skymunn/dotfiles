scriptencoding utf-8

set background=dark
hi clear

let g:colors_name="simpleblack"

" ==========================
"  Highlighting Function
" ==========================
fun! <sid>hi(group, fg, bg, attr)
  if !empty(a:fg)
    exec "hi " . a:group . " ctermfg=" .  a:fg.cterm256
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " ctermbg=" .  a:bg.cterm256
  endif
  if a:attr != ""
    exec "hi " . a:group . " cterm=" . a:attr
  endif
endfun

" ==========================
"  Color Variables
" ==========================
" Reference https://jonasjacek.github.io/colors

let s:simpleBlack = {'cterm256': 'black'}
let s:simpleBlack2 = {'cterm256': '233'}
let s:simpleGray = {'cterm256': '235'}
let s:simpleGray2 = {'cterm256': '237'}
let s:simpleGray3 = {'cterm256': '239'}
let s:simpleGray4 = {'cterm256': '241'}
let s:simpleSteel = {'cterm256': '253'}
let s:simpleWhite = {'cterm256': '231'}
let s:simpleIndianRed = {'cterm256': '204'}
let s:simpleLightBlue = {'cterm256': '153'}
let s:simpleBlue = {'cterm256': '67'}
let s:simpleBlue2 = {'cterm256': '110'}
let s:simpleBlue3 = {'cterm256': '68'}
let s:simpleGreen = {'cterm256': '71'}
let s:simpleGoo = {'cterm256': '191'}
let s:simpleGold = {'cterm256': '220'}
let s:simpleOrange = {'cterm256': '208'}
let s:simpleRed = {'cterm256': '1'}
let s:simpleRed2 = {'cterm256': '196'}
let s:none = {'cterm256': 'NONE'}

" ==========================
" Definitions
" ==========================
"    <sid>hi(GROUP, FOREGROUND, BACKGROUND, ATTRIBUTE)

" Editor
call <sid>hi('ColorColumn', s:none, s:simpleBlack2, 'none')
call <sid>hi('Cursor', s:simpleBlack, s:simpleSteel, 'none')
call <sid>hi('CursorColumn', s:none, s:simpleBlack2, 'none')
call <sid>hi('CursorLine', s:none, s:simpleGray, 'none')
call <sid>hi('CursorLineNr', s:simpleSteel, s:simpleGray, 'none')
call <sid>hi('Directory', s:simpleBlue, s:simpleBlack, 'none')
call <sid>hi('Folded', s:simpleGray3, s:none, 'none')
call <sid>hi('SignColumn', s:simpleBlue2, s:simpleBlack, 'none')
call <sid>hi('Normal', s:simpleSteel, s:simpleBlack, 'none')
call <sid>hi('MatchParen', s:simpleWhite, s:simpleBlue2, 'none')
call <sid>hi('Pmenu', s:none, s:simpleBlack, 'none')
call <sid>hi('PmenuSel', s:none, s:simpleGray2, 'none')
call <sid>hi('Search', s:simpleBlack, s:simpleBlue, 'none')
call <sid>hi('IncSearch', s:simpleBlack, s:simpleBlue, 'none')
call <sid>hi('StatusLine', s:simpleBlue2, s:simpleBlack, 'none')
call <sid>hi('StatusLineNC', s:simpleBlue3, s:simpleBlack, 'none')
call <sid>hi('StatusLineTerm', s:simpleBlue, s:simpleBlack, 'none')
call <sid>hi('StatusLineTermNC', s:simpleBlue, s:simpleBlack, 'None')
call <sid>hi('VertSplit', s:simpleBlack2, s:simpleBlack, 'none')
call <sid>hi('Visual', s:none, s:simpleGray2, 'none')
call <sid>hi('TabLine', s:simpleGray4, s:simpleBlack, 'none')
call <sid>hi('TabLineFill', s:none, s:simpleBlack, 'none')
call <sid>hi('TabLineSel', s:simpleBlue, s:simpleBlack, 'none')

" General
call <sid>hi('Boolean', s:simpleGoo, s:none, 'none')
call <sid>hi('Character', s:simpleGoo, s:none, 'none')
call <sid>hi('Comment', s:simpleBlue, s:none, 'none')
call <sid>hi('Conditional', s:simpleLightBlue, s:none, 'none')
call <sid>hi('Constant', s:simpleOrange, s:none, 'none')
call <sid>hi('Define', s:simpleLightBlue, s:none, 'none')
call <sid>hi('ErrorMsg', s:simpleWhite, s:simpleRed, 'none')
call <sid>hi('Float', s:simpleGoo, s:none, 'none')
call <sid>hi('Function', s:simpleBlue2, s:none, 'none')
call <sid>hi('Identifier', s:simpleGold, s:none, 'none')
call <sid>hi('Keyword', s:simpleLightBlue, s:none, 'none')
call <sid>hi('Label', s:simpleSteel, s:none, 'none')
call <sid>hi('NonText', s:simpleGray, s:simpleBlack, 'none')
call <sid>hi('Number', s:simpleGoo, s:none, 'none')
call <sid>hi('Operator', s:simpleIndianRed, s:none, 'none')
call <sid>hi('PreProc', s:simpleIndianRed, s:none, 'none')
call <sid>hi('Special', s:simpleIndianRed, s:none, 'none')
call <sid>hi('SpecialKey', s:simpleGray, s:simpleBlack, 'none')
call <sid>hi('SpellBad', s:none, s:none, 'none')
call <sid>hi('SpellCap', s:none, s:none, 'none')
call <sid>hi('SpellLocal', s:none, s:none, 'none')
call <sid>hi('Statement', s:simpleIndianRed, s:none, 'none')
call <sid>hi('StorageClass', s:simpleGold, s:none, 'none')
call <sid>hi('String', s:simpleGreen, s:none, 'none')
call <sid>hi('Tag', s:simpleGold, s:none, 'none')
call <sid>hi('Title', s:none, s:none, 'none')
call <sid>hi('Todo', s:simpleBlue2, s:none, 'none')
call <sid>hi('Type', s:simpleOrange, s:none, 'none')
call <sid>hi('Underlined', s:none, s:none, 'none')
call <sid>hi('WarningMsg', s:simpleWhite, s:simpleRed, 'none')

" Diff Mode
if &diff
  call <sid>hi('DiffAdd', s:simpleBlack, s:simpleGreen, 'none')
  call <sid>hi('DiffChange', s:simpleBlack, s:simpleGold, 'none')
  call <sid>hi('DiffDelete', s:simpleRed2, s:simpleRed, 'none')
  call <sid>hi('DiffText', s:simpleGray, s:simpleBlue2, 'none')
else
  call <sid>hi('DiffAdd', s:simpleGreen, s:none, 'none')
  call <sid>hi('DiffChange', s:simpleGold, s:none, 'none')
  call <sid>hi('DiffDelete', s:simpleRed2, s:none, 'none')
  call <sid>hi('DiffText', s:simpleSteel, s:simpleBlue2, 'none')
endif
