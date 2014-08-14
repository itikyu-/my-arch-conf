bindkey -e
PATH=$HOME/bin:/usr/games:/sbin:/usr/sbin:/usr/local/sbin:$PATH

## pronpt
PROMPT="%/%% "
PROMPT2="%_%% "
SPROMPT="%r is correct? [n,y,a,e]: "

## 補完時に大小文字を区別しない
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*' menu select=1

autoload -U compinit && compinit

## 色付け設定 ####
autoload -U compinit
compinit

zstyle ':completion:*' list-colors ''

autoload -U compinit
compinit

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

alias ls="ls -G"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34' 

## options
setopt BASH_AUTO_LIST
setopt LIST_AMBIGUOUS
setopt AUTO_PUSHD

## history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=16384
SAVEHIST=16384
setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt share_history


# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


export GIT_PROXY_COMMAND=/usr/local/bin/git-proxy.sh
export EDITOR="vim"

# 便利エイリアス
alias c="chromium"
alias be="bundle exec"
alias emacs="emacsclient -n -c -a ''"
alias e="emacsclient -n -c -a ''"
alias syspoff="systemctl poweroff"
alias syssuspend="systemctl suspend"
alias clojure-repl="java -cp /usr/share/clojure/clojure.jar clojure.main"

PATH="$PATH":/usr/local/texlive/2013/bin/i386-linux

export LESSCHARSET=utf-8
alsactl --file ~/.config/asound.state restore
