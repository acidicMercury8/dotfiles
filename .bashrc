[[ "$-" != *i* ]] && return

export DISPLAY=":1"

export HISTSIZE=1000
export HISTFILESIZE=1000
export HISTCONTROL=ignoreboth:erasedups
export HISTTIMEFORMAT="%d.%m.%y %T "

shopt -s histappend
shopt -s histverify

if [[ -f "${PREFIX}/usr/share/bash-completion/bash_completion" ]]; then
    . ${PREFIX}/usr/share/bash-completion/bash_completion
fi

if [[ -f "${HOME}/.bash_aliases" ]]; then
    source "${HOME}/.bash_aliases"
fi

if [[ -f "${HOME}/.bash_functions" ]]; then
    source "${HOME}/.bash_functions"
fi

export PATH="${HOME}/.luarocks/bin:$PATH"
