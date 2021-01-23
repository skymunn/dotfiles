GuiPopupmenu 0
GuiTabline 0

" Nerd Font patch have different name in Unix and Win32
if has('unix')
  GuiFont! Hack Nerd Font:h14
else
  GuiFont! Hack NF:h14
endif

