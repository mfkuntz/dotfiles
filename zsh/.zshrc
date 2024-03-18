# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git asdf kubectl aws)

source $ZSH/oh-my-zsh.sh

function sourceIf() {
  if [ -f "$1" ]; then
    source "$1"
  fi
}

export IS_PERSONAL_DEVICE="true"
if [ -f "$HOME/.work.zshrc" ]; then
  IS_PERSONAL_DEVICE="false"
fi

sourceIf $HOME/.zsh-private
if [ "$IS_PERSONAL_DEVICE" = "true" ]; then
  sourceIf $HOME/.personal.zshrc
else
  sourceIf $HOME/.work.zshrc
fi


unsetopt share_history

# k9s 
export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$PATH:/Users/mkuntz/go/bin"
# move go priority. may break with homebrew chagnes to 1.20
# export PATH="/usr/local/go/bin:$PATH"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$PATH:/Users/mkuntz/.local/bin"

function rzsh() {
  source $HOME/.zshrc
}
function clip() {
	pbcopy
}
function goroot() {
  cd $(git rev-parse --show-toplevel)
}
function gitSquash() {
  git fetch
  git reset --soft origin/master
}

# fh - repeat history
function fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -E 's/ *[0-9]*\*? *//' | sed -E 's/\\/\\\\/g')
}

function flushDns() {
  sudo killall -HUP mDNSResponder && echo macOS DNS Cache Reset
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)

if hash atuin 2>/dev/null; then
  eval "$(atuin init zsh)"
  alias fha="atuin search -i"
fi
