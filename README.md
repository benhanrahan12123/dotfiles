MAKE SURE THE RELEVANT CONFIG FOLDERS ARE EMPTY



if stowing dotfiles for kitty, make sure ~/.config/kitty is just an empty directory

then when we execute

stow -n -v -d ~/dotfiles/PC -t ~ hypr

we will see a "dry run" of where our symlinks will be placed. remove -n from the commmand if the output is correct

two different folders due to different configurations

stow -n -v -d ~/dotfiles/Laptop -t ~ hypr

