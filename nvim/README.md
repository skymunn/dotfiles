This is my primary (neo)vim configuration.

## How to install
1. Copy this folder in `~/.config`.
2. Install all fonts in this root folder.
3. Open `nvim` or `nvim-qt` first to install all the dependency.
5. Execute `:PlugInstall`.
6. Execute `:CocInstall <Extension>`.
7. Open `vi` or `vim` to install editor dependency.
8. Repeat process in number 5.
9. And, you're done!

### Bonus Step (if you're using Windows)
1. Open `right_click_menu.reg` with Notepad and change the location that `nvim-qt` located.
2. Execute `right_click_menu.reg`.

## coc.vim Extension
1. coc-tsserver
2. coc-json
3. coc-html
4. coc-css
5. coc-sql
6. coc-phpls
7. coc-python
8. coc-discord-rpc
9. coc-explorer

## Theme available
You can change it in `init.vim` and restart vim/re-source `init.vim`.

- sonokai
- shades_of_purple

## Screenshot
- Sonokai
![Sonokai](./screenshot/sonokai.png)
- shades_of_purple
![shades_of_purple](./screenshot/shades_of_purples.png)

