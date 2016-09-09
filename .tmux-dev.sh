#set up default panes for dev setup and run commands to start servers
tmux selectp -t 0 # select the first (0) pane
tmux splitw -h -p 50 # split it into two halves
tmux selectp -t 1 # select the new, second (1) panea
tmux splitw -v -p 50 # split it into two halves
tmux selectp -t 0
tmux send-keys -t 0 'vm' enter
tmux send-keys -t 2 'wp' enter
tmux send-keys -t 1 'p' enter
tmux send-keys -t 1 'p frontend' enter
tmux send-keys -t 1 'rs'
