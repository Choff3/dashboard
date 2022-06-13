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
tmux send-keys -t 0 C-z 'neofetch' Enter
tmux send-keys -t 1 C-z 'cmatrix' Enter
tmux send-keys -t 2 C-z 'tty-clock -sScbt -C 6 -f "%A %n %B %e, %Y"' Enter
tmux send-keys -t 3 C-z 'echo "poop" | cowsay' Enter
tmux send-keys -t 4 C-z 'curl https://wttr.in/Atlanta?F1Q' Enter

tmux attach-session -t "Dash"
