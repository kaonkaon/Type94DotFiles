#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs..

# Configure Prompt Theme
TYPEWRITTEN_PROMPT_LAYOUT="singleline_verbose"
TYPEWRITTEN_SYMBOL="$"
TYPEWRITTEN_RELATIVE_PATH="home"
TYPEWRITTEN_CURSOR="underscore"
export TYPEWRITTEN_COLOR_MAPPINGS="primary:default;secondary:default"

# Load prompt
autoload -Uz promptinit
promptinit
prompt typewritten

source ~/.zplug/init.zsh

zplug "plugins/sudo", from:oh-my-zsh
zplug "MichaelAquilina/zsh-auto-notify"

zplug load

export PATH=$PATH:/home/kaon/.spicetify
