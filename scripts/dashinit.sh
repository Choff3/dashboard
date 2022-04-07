#!/bin/sh

tmux new -s Dash2 -d -x 170 -y 48
tmux split-window -v
tmux resize-pane -D 6
tmux select-pane -t 0
tmux split-window -h
tmux resize-pane -R 7
# tmux send-keys '/home/teddy/scripts/neofresh.sh' C-m
# tmux select-pane -t 0
# tmux send-keys 'peaclock' C-m
tmux select-pane -t 2
sleep 20
# tmux send-keys '/home/teddy/scripts/weather.sh' C-m
tmux split-window -h
tmux resize-pane -L 42
# tmux send-keys '/home/teddy/scripts/cowfort.sh' C-m
tmux send-keys -t 0 C-z 'peaclock' Enter
tmux send-keys -t 1 C-z '/home/teddy/scripts/neofresh.sh' Enter
tmux send-keys -t 2 C-z '/home/teddy/scripts/cowfort.sh' Enter
tmux send-keys -t 3 C-z 'sleep 20 && /home/teddy/scripts/weather.sh' Enter