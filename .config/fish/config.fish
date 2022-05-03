contains $HOME/bin $PATH ; or set PATH $HOME/bin $PATH
contains $HOME/.cargo/bin $PATH ; or set PATH $HOME/.cargo/bin $PATH
contains $PATH:$HOME/.config/itch/apps/butler $PATH ; or set PATH $PATH:$HOME/.config/itch/apps/butler $PATH

# Deduplicate paths. Adapted from https://github.com/fish-shell/fish-shell/issues/5117#issuecomment-408639996
set -x PATH (printf '%s\n' $PATH | sort -u)

alias vi=nvim
alias arrr='sudo protonvpn c --p2p'
alias usa='sudo protonvpn c US-GA#14'

# View more here https://gist.github.com/realkotob/10f7126d08bf626a16ac3154eccfe652
alias g='git'
alias gst='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gl='git pull'
alias gup='git pull --rebase'
alias gp='git push'
alias gd='git diff'




function ssf
    ssh $argv -t 'fish'
end

funcsave ssf

starship init fish | source
