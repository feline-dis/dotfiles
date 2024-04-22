# Set prefix
unbind C-b
set-option -g prefix C-Space
bind-key C-Space send-prefix

# Open new window in current path
bind c new-window -c "#{pane_current_path}"
bind '"' split-window -c "#{pane_current_path}"
bind % split-window -h -c "#{pane_current_path}"

# Set vi mode
bind -n M-H previous-window
bind -n M-L next-window
bind -n M-Left previous-window
bind -n M-Right next-window

# Skip confirmation when killing window/panes
bind-key & kill-window
bind-key x kill-pane
