# dotfiles

xfce + archlinux

![confhome](https://github.com/user-attachments/assets/586690fd-0f0d-47f1-a07c-462c6c5884e7)


> over 680 packages... 😞 
> so bloated ik... 😭 (update: 615)

```conf
set -g mouse
unbind-key C-b
set -g prefix C-a
bind-key C-a send-prefix

set -g history-limit 10000

# change while in tmux
# it also locks mouse
# uncomment it while you conf 
# bind r source-file ~/.tmux.conf

# start numbering at 1
set -g base-index 1
set -g pane-base-index 1

set -g status-bg "colour16"
set -g status-fg "colour218"
# set -g status-right "%l:%M %p"    # time format

set -g status-right-style 'fg=colour15 bg=colour16'
set -g status-right ' %Y-%m-%d %H:%M '
set -g status-right-length 50

set -g status-left ''
set -g status-left-length 10

set -g pane-border-style fg="colour233"
set -g pane-active-border-style fg="colour218"

set-window-option -g window-status-current-style "bg=colour233,fg=colour231"    # current window background + foreground colors

# vim-like pane resizing  
bind -r C-k resize-pane -U
bind -r C-j resize-pane -D
bind -r C-h resize-pane -L
bind -r C-l resize-pane -R

# vim-like pane switching
bind -r k select-pane -U 
bind -r j select-pane -D 
bind -r h select-pane -L 
bind -r l select-pane -R 

# and now unbind keys
unbind Up     
unbind Down   
unbind Left   
unbind Right  

unbind C-Up   
unbind C-Down 
unbind C-Left 
unbind C-Right


```
> tmux config...

```bash
for i in {0..255}; do
  printf '\x1b[38;5;%dmcolour%d\x1b[0m\n' $i $i
done
```
> cool bash script to list colors

```bash
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias spotify='spotify-launcher --skip-update'

RED='\[\033[0;31m\]'
GREENY='\[\033[1;32m\]'
GREEN='\[\033[1;32m\]'
REDY='\[\033[1;31m\]'

NC='\[\033[0m\]' # resets color

# this is bad
# export PS1="\342\232\241${GREEN}\u${NC}\360\237\220\247\360\237\232\251${NC}\W$ "

export PS1="${GREENY}\u\360\237\220\247${NC}${REDY}=>${NC}${RED}\W$\[\033[0m\] "
# Sets directories to something
# export LS_COLORS='di=0;34'  
export LS_COLORS='di=1;38'
PATH="$HOME/bin:$PATH"
```
> bash config...
