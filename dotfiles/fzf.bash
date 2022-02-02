# Setup fzf
# ---------

FZF_PATH="/opt/homebrew/opt/fzf"

if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}${FZF_PATH}/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "${FZF_PATH}/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "${FZF_PATH}/shell/key-bindings.bash"
