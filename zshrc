source ~/.dotfiles/antigen/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting

antigen apply

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$fg[yellow]%}%{$reset_color%}[%~]✨ %{$fg[blue]%}%
[%(?.%{$fg[green]%}.%{$fg[red]%})%D{%H:%M}%{$fg[blue]%}] -> "

autoload -U compinit
compinit

setopt completeinword

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

alias gs='git status'
alias ls='ls -G'

