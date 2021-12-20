alias hist="history"
alias histg="history | grep"

alias which="command -v $1"

alias c="clear"

alias ls="ls -a"
alias lt="ls --human-readable --size $1 -S --classify"

alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

alias cmount="mount | column -t"
alias meminfo="free -m -l -t"
alias ps?="ps aux | grep"

alias getsite="wget --random-wait -r -p -e --robots=off -U mozilla"
alias listen="lsof -P -i -n"
alias ipinfo="curl ifconfig.me && curl ifconfig.me/host"

alias ubuntu="proot-distro login ubuntu"

alias vncstart="vncserver"
alias vncstop="vncserver -kill \"localhost:1\""
