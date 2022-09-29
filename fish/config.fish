if status is-interactive
    # Commands to run in interactive sessions can go here
end

# remove welcome message
set fish_greeting

# safer defaults that require confirmation
alias rm="rm -i"
alias mv="mv -i"
alias cp="cp -riv"
alias mkdir='mkdir -vp'

# git
alias g="git"
alias gst="git status"
alias gca="git commit --amend"
alias gaa="git add -A"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias gpf="git push --force"

# lunarvim shortcut
alias lvim="/Users/lucaspassini/.local/bin/lvim"

# others
alias tree="ls --tree"
alias f="ranger"

if type -q exa 
 alias ll "exa -l -g --icons"
 alias lla "ll -a"
end

# starship prompt setup
starship init fish | source
