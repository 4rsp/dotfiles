# dotfiles

xfce + archlinux

![confffhome](https://github.com/user-attachments/assets/b8436da7-f753-451d-b742-23fdc0479861)

> 681 packages... 😞
> so bloated... 😭

```bash
set -g mouse
unbind-key C-b
set -g prefix C-a
bind-key C-a send-prefix

set -g status-bg "colour65"
set -g status-fg "colour232"
#set -g status-right "%l:%M %p"    # time format

set -g history-limit 20000

# start numbering at 1
set -g base-index 1
set -g pane-base-index 1

set -g status-right-style 'fg=colour52 bg=colour9'
set -g status-right '%Y-%m-%d %H:%M '
set -g status-right-length 50

set -g status-left ''
set -g status-left-length 10

set -g pane-border-style fg="colour66"
set -g pane-active-border-style fg="colour9"

# current window background + foreground colors
set-window-option -g window-status-current-style "bg=colour9,fg=colour52"    

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
# export LS_COLORS='di=0;34'   # Sets directories to something
export LS_COLORS='di=1;38'
PATH="$HOME/bin:$PATH"
```
> bash config...
