autocmd VimEnter * Startify
autocmd TermOpen * setlocal nonumber norelativenumber
silent exec ":!~/dotfiles/bashrc/exec/nvim_enable_rpc.sh"

