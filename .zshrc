
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

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/tobi/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
