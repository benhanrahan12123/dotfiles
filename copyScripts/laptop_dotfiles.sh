#!/bin/bash

set -e

echo "Moving Hyprland configs..."
rsync -avh --progress ~/dotfiles/laptop/hypr/.config/hypr/ ~/.config/hypr/

echo "Moving Waybar configs..."
rsync -avh --progress ~/dotfiles/laptop/waybar/.config/waybar/ ~/.config/waybar/

echo "Done ✅"
