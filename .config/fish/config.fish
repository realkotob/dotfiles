contains $HOME/bin $PATH ; or set PATH $HOME/bin $PATH
contains $HOME/.cargo/bin $PATH ; or set PATH $HOME/.cargo/bin $PATH
contains $PATH:$HOME/.config/itch/apps/butler $PATH ; or set PATH $PATH:$HOME/.config/itch/apps/butler $PATH

# Deduplicate paths. Adapted from https://github.com/fish-shell/fish-shell/issues/5117#issuecomment-408639996
set -x PATH (printf '%s\n' $PATH | sort -u)

alias vi=nvim
alias arrr='sudo protonvpn c --p2p'
alias usa='sudo protonvpn c US-GA#14'

starship init fish | source
