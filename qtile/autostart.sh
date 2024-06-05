#!/bin/sh
polybar &
picom -b --config=/dev/null --fading --fade-in-step=0.01 --fade-out-step=0.01 --fade-delta=3 --inactive-opacity=0.7 --corner-radius=10 --vsync --blur-method=dual_kawase --blur-background-fixed --blur-strength=4 --backend=glx --glx-no-stencil
sxhkd &
nitrogen --set-zoom-fill --random ~/.config/wallpapers/ &
