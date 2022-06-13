#!/bin/sh

tmux new -s Dash -d -x 170 -y 48
tmux split-window -v
tmux resize-pane -D 6
tmux select-pane -t 0
tmux split-window -h
tmux resize-pane -R 30
tmux select-pane -t 0
tmux split-window -h
tmux resize-pane -R 15
tmux select-pane -t 3
sleep 20
tmux split-window -h
tmux resize-pane -L 42
tmux send-keys -t 1 C-z '/home/dash/scripts/neofresh.sh' Enter
tmux send-keys -t 1 C-z 'cmatrix' Enter
tmux send-keys -t 2 C-z 'tty-clock -sScbt -C 6 -f "%A %n %B %e, %Y"' Enter
tmux send-keys -t 2 C-z '/home/dash/scripts/cowfort.sh' Enter
tmux send-keys -t 3 C-z 'sleep 20 && /home/dash/scripts/weather.sh' Enter

tmux attach-session -t "Dash"
