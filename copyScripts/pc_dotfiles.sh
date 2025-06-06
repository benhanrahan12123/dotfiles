#!/bin/bash

set -e

echo "Moving Hyprland configs..."
rsync -avh --progress ~/dotfiles/pc/hypr/.config/hypr/ ~/.config/hypr/

echo "Moving Waybar configs..."
rsync -avh --progress ~/dotfiles/pc/waybar/.config/waybar/ ~/.config/waybar/

echo "Done ✅"
