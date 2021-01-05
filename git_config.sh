echo "Set GPG_TTY environment variable" 
export GPG_TTY=$(tty) 

echo "Set git to choose gnupg2 as gnu program"
git config --global gpg.program gpg2
