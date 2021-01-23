let config_list = [
  \ '~plug.vim',
	\ 'autocommand.vim',
	\ 'indentline.vim',
	\ 'mapping.vim',
	\ 'setter.vim',
	\ 'theme.vim',
  \ 'airline.vim',
  \ 'theme_sonokai.vim'
  \ ]

for files in config_list
  exec 'runtime config/' . files
endfor

set secure
