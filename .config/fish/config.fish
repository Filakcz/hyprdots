if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -U fish_greeting ""
zoxide init fish --cmd j | source

alias ls="eza -a --icons=auto"
alias icat="kitten icat"
