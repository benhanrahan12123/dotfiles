MAKE SURE THE RELEVANT CONFIG FOLDERS ARE EMPTY



if stowing dotfiles for kitty, make sure ~/.config/kitty is just an empty directory

then when we execute

stow -n -v -d ~/dotfiles/PC -t ~ hypr

we will see a "dry run" of where our symlinks will be placed. remove -n from the command if the output is correct

two different folders due to different configurations

stow -n -v -d ~/dotfiles/Laptop -t ~ hypr

readlink -f .config/kitty/kitty.conf // it will print the absolute path

example

[ben1@archpc12 kitty]$ readlink -f kitty.conf 
/home/ben1/dotfiles/PC/kitty/.config/kitty/kitty.conf
[ben1@archpc12 kitty]$ pwd
/home/ben1/.config/kitty
