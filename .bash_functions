mcd() {
    mkdir -p "$1"
    cd "$1"
}

cds() {
    cd "$1"
    ls -a
}

backup() {
    cp "$1"{,.bak}
}

verify-md5() {
    md5sum "$1" | grep "$2"
}

extract() {
    if [ -f $1 ]; then
        case $1 in
            *.tar.bz2) tar xjf $1 ;;
            *.tar.gz)  tar xzf $1 ;;
            *.bz2)     bunzip2 $1 ;;
            *.rar)     unrar e $1 ;;
            *.gz)      gunzip $1 ;;
            *.tar)     tar xf $1 ;;
            *.tbz2)    tar xjf $1 ;;
            *.tgz)     tar xzf $1 ;;
            *.zip)     unzip $1 ;;
            *.Z)       uncompress $1 ;;
            *.7z)      7z x $1 ;;
            *) echo "'$1' cannot be extracted" ;;
        esac
    else
        echo "'$1' is not a valid filename"
    fi
}

upd() {
    echo -e "Updating \033[33mapt\033[0m packages\n"
    pkg upgrade -y
}

setup-motd() {
    cp .files/motd ${PREFIX}/etc/motd
    cp .files/bash.bashrc ${PREFIX}/etc/bash.bashrc
}
