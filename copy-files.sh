cp -rf ~/.config/regolith/i3 ~/source/dotfiles
cp -rf ~/.config/kitty ~/source/dotfiles
cp ~/.vimrc ~/.zshrc ~/.Xresources ~/source/dotfiles
rm -rf ./i3-regolith
mv ./i3 ./i3-regolith
rm -f ./kitty/.kitty.conf.un~
rm -f ./i3-regolith/.config.un~
