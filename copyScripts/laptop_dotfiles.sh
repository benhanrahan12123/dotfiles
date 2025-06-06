#!/bin/bash

set -e

echo "Moving Hyprland configs..."
rsync -avh --progress ~/dotfiles/Laptop/hypr/.config/hypr/ ~/.config/hypr/

echo "Moving Waybar configs..."
rsync -avh --progress ~/dotfiles/Laptop/waybar/.config/waybar/ ~/.config/waybar/

echo "Done ✅"
