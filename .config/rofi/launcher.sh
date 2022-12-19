#!/usr/bin/env bash

theme="Full-screen"

dir="$HOME/.config/rofi"

rofi -no-lazy-grab -show drun -modi drun -theme $dir/"$theme"
