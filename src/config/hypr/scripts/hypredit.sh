#!/bin/bash

choice=$(printf "Hyprland\0icon\x1fhyprland\n\
Kitty\0icon\x1fkitty\n\
Waybar\0icon\x1fwaybar\n\
Hyprlock\0icon\x1fhyprlock\n\
Rofi\0icon\x1frofi\n\
Neovim\0icon\x1fnvim\n\
Wlogout\0icon\x1fwlogout\n" \
| rofi -dmenu -show-icons -p "Edit Config")

case "$choice" in
  "Hyprland")
    kitty --hold nvim ~/.config/hypr/
    ;;
  "Kitty")
    kitty --hold nvim ~/.config/kitty/kitty.conf
    ;;
  "Waybar")
    kitty --hold nvim ~/.config/waybar/
    ;;
  "Hyprlock")
    kitty --hold nvim ~/.config/hypr/hyprlock.conf
    ;;
  "Rofi")
    kitty --hold nvim ~/.config/rofi/config.rasi
    ;;
  "Neovim")
    kitty --hold nvim ~/.config/nvim/
    ;;
  "Wlogout")
    kitty --hold nvim ~/.config/wlogout/
    ;;
esac

