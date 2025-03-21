
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git fzf rust z)

source $ZSH/oh-my-zsh.sh


source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH="/opt/homebrew/opt/rustup/bin:$PATH"

eval "$(starship init zsh)"

if [[ "$TERM_PROGRAM" != "vscode" ]]; then
  if [ -z "$ZED_TERM" ]; then
      eval "$(zellij setup --generate-auto-start zsh)"
  fi
fi

