#!/bin/sh
tmux new-session -d -s "Dash"
tmux split-window -v -p 25
tmux select-pane -t 0
tmux split-window -h
tmux send-keys '/home/pi/scripts/neofresh.sh' C-m
tmux select-pane -t 0
tmux send-keys 'peaclock' C-m
tmux select-pane -t 2
tmux send-keys '/home/pi/scripts/tremc.sh' C-m
tmux attach-session -t "Dash"

