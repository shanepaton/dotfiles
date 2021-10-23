# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

right_triangle() {
   echo $'\ue0b0'
}

unsetopt correct_all
unsetopt correct
DISABLE_CORRECTION="true" 

PROMPT="%K{253}%F{black} %n@%m %F{253}%K{177} %F{black}%~ %k$reset_color%}%F{177}%F{cyan} "
PROMPT="%K{253}%F{black} %n@%m %F{253}%K{177} %F{white}%~ %k$reset_color%}%F{177}%K{99}%F{white} λ %F{99}%k${99}%F{cyan} "
RPROMPT="%?"
#spaton

# Uncomment for ZSH Insulter
#if [ -f ~/.zshInsulter/zsh.command-not-found ]; then
#    . ~/.zshInsulter/zsh.command-not-found
#fi
