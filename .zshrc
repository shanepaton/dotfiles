# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#!/bin/zsh

# Set a color in the terminal palette.
# \param 1 The index in the pallete.
# \param 2 is a hexadecimal RGB color code.
function set_color {
        if [ "$TERM" = "linux" ]; then
                [ $1 -lt 16 ] && printf $'\e]P%X%s' "$1" "$2"
        else
                printf $'\e]4;%s;#%s\e\\' "$1" "$2"
        fi
}

local black=1d2021
local white=f9f5d7

# Set default foreground / background colors for terminals that support it.
printf "\e]10;#$white"
printf "\e]11;#$black"

# Set terminal colors.
set_color  0 $black # black
set_color  1 cc241d # red
set_color  2 98971a # green
set_color  3 d79921 # yellow
set_color  4 458588 # blue
set_color  5 b16286 # magenta
set_color  6 689d6a # cyan
set_color  7 928374 # light grey
set_color  8 282828 # dark grey
set_color  9 fb4934 # bright red
set_color 10 b8bb26 # bright green
set_color 11 fabd2f # bright yellow
set_color 12 83a598 # bright blue
set_color 13 d3869b # bright magenta
set_color 14 8ec07c # bright cyan
set_color 15 $white # white
# Set colors for 256
set_color 17 076678 # dark blue
set_color 22 79740e # dark green
set_color 52 9d0006 # dark red
set_color 53 8f3f71 # dark magenta

export ZSH="$HOME/.oh-my-zsh"

alias qhypr="nano ~/.config/hypr/hyprland.conf"
alias waykill="killall waybar && waybar & disown"

plugins=(
    # git
    archlinux
    # zsh-autosuggestions
    # zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

pokemon-colorscripts --no-title -n tepig

# Set-up icons for files/folders in terminal
# alias ls='eza -a --icons'
# alias ll='eza -al --icons'
# alias lt='eza -a --tree --level=1 --icons'

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

PROMPT="%K{15}%F{black} %n@%m %F{15}%K{9} %F{black}%~ %F{9}%K{11}%F{black} λ %F{11}%K{default}%K{d>
