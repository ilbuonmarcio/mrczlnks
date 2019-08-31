#!/bin/zsh

echo 
if [ $(pidof polybar | wc -l) = 0 ]; then
	polybar -q -c=$HOME/.config/polybar/topbar topbar &>/dev/null &
	polybar -q -c=$HOME/.config/polybar/dock dock &>/dev/null &
else
	kill -9 $(pidof polybar)
fi
