export JAVA_HOME=/opt/homebrew/opt/openjdk@11/
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:/usr/local/bin:$PATH"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PYTHONPATH=/Users/nafra/Desktop/code/spark-handson
export ZSH=$HOME/.oh-my-zsh
export PATH="/Applications/Alacritty.app/Contents/MacOS:$PATH"
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

eval "$(pyenv init --path)"
export PATH="$HOME/.pyenv/bin:$PATH"

eval "$(pyenv init -)

"ZSH_THEME="fino" # set by `omz`
plugins=(git zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
neofetch
source <(ng completion script)
