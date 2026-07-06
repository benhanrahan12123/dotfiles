
# Source ~/.zshrc if it exists
# [[ -f ~/.zshrc ]] && . ~/.zshrc

# Start Hyprland on tty1 if no DISPLAY is set
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec start-hyprland
fi

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty2 ]]; then
    startx
fi
