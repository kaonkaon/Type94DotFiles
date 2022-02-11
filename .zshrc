# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# Customize to your needs...

# TypeWritten Prompt Customization
export TYPEWRITTEN_SYMBOL="$"
export TYPEWRITTEN_CURSOR="block"
export TYPEWRITTEN_COLORS="symbol:white"
export TYPEWRITTEN_COLOR_MAPPINGS="primary:green"

# Set Prompt Theme
autoload -Uz promptinit
promptinit
prompt typewritten

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# start with neofetch
# neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#zplug plugins'
source ~/.zplug/init.zsh

zplug "zsh-users/zsh-history-substring-search"
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/copydir", from:oh-my-zsh
zplug "plugins/copyfile", from:oh-my-zsh
zplug "plugins/dirhistory", from:oh-my-zsh

# if ! zplug check --verbose; then
# 	printf "Install? [y/N]: "
# 	if read -q; then
# 		echo; zplug install
# 	fi
# fi

zplug load

#alias
alias wifiscan="nmcli dev wifi"
