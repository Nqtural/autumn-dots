if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -u fish_greeting

function fish_prompt
    echo -e "\033[1;32m$(pwd | sed 's/\/home\/nqtural/\~/') \033[1;34m> \033[0m"
end

# Environment variables
source $HOME/.config/fish/envvars.fish

# Aliases
source $HOME/.config/fish/alias.fish

# Path
set PATH "$PATH:$CARGO_HOME/bin:$HOME/.local/bin"

# Zoxide
if command -sq zoxide
    zoxide init fish | source
else
    echo 'zoxide: command not found, please install it from https://github.com/ajeetdsouza/zoxide'
end
