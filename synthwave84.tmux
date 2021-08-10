#!/usr/bin/env bash

background='#262335'
inactiveBackground='#241b2f'
foreground='#d6deeb'
cyan='#03edf9'
Green='#72f1b8'
magenta='#ff7edb'
red='#fe4450'
yellow='#f97e72'
gray='#535353'

# status
tmux set-option -g status-justify "absolute-centre"
tmux set-option -g status "on"
tmux set-option -g status-attr "none"
tmux set-option -g status-bg "${background}"
tmux set-option -g status-left-attr "none"
tmux set-option -g status-left-length "50"
tmux set-option -g status-right-attr "none"
tmux set-option -g status-right-length "100"

# messages
tmux set-option -g message-fg "${foreground}"
tmux set-option -g message-bg "${background}"
tmux set-option -g message-command-fg "${foreground}"
tmux set-option -g message-command-bg "${background}"

# panes
tmux set-option -g pane-active-border-style "fg=${magenta},bg=${background}"
tmux set-option -g pane-border-style "fg=${gray},bg=${inactiveBackground}"

# selection
tmux set-option -g mode-style "fg=${background},bg=${foreground}"

# active / inactive pane bg
tmux set-option -g window-style "bg=${inactiveBackground}"
tmux set-option -g window-active-style "bg=${background}"

# window status
tmux set-window-option -g window-status-fg "${foreground}"
tmux set-window-option -g window-status-attr "none"
tmux set-window-option -g window-status-activity-bg "${background}"
tmux set-window-option -g window-status-activity-attr "none"
tmux set-window-option -g window-status-activity-fg "${magenta}"
tmux set-window-option -g window-status-separator ""
tmux set-window-option -g window-status-bg "${background}"
tmux set-window-option -g window-status-format "#[fg=${gray},bg=${background}] #W "
tmux set-window-option -g window-status-current-format "#[bg=${background}, fg=${magenta}] #{?window_zoomed_flag,(,}#W#{?window_zoomed_flag,),} "

# vim: set ft=bash
