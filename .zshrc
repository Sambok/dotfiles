export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="theunraveler"

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(git brew osx extract z ruby rails)

source $ZSH/oh-my-zsh.sh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

if [ -f ~/.config/exercism/exercism_completion.zsh ]; then
  . ~/.config/exercism/exercism_completion.zsh
fi

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}
