# Set up environmental variables

export VISUAL=vim
export EDITOR=vim


# Add ssh socket for ssh-agent
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

export ANDROID_HOME="/opt/android-sdk"

PATH="$PATH"
PATH+=":/home/pavlin/miniconda3/bin"
PATH+=":/home/pavlin/dotfiles/bin"
PATH+=":/home/pavlin/.composer/vendor/bin"
PATH+=":$ANDROID_HOME/tools/bin"
export PATH;