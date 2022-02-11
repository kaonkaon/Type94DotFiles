#!/usr/bin/env bash

theme="menu.rasi"

dir="$HOME/.config/rofi/mine"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
