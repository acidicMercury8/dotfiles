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
    cp .files/termux/motd ${PREFIX}/etc/motd
    cp .files/termux/bash.bashrc ${PREFIX}/etc/bash.bashrc
}

setup-ubuntu() {
    cp .files/termux-ubuntu/.profile ${PREFIX}/var/lib/proot-distro/installed-rootfs/ubuntu/root/.profile
    cp .files/termux-ubuntu/.bashrc ${PREFIX}/var/lib/proot-distro/installed-rootfs/ubuntu/root/.bashrc
    cp .files/termux-ubuntu/.bash_aliases ${PREFIX}/var/lib/proot-distro/installed-rootfs/ubuntu/root/.bash_aliases
    cp .files/termux-ubuntu/.bash_functions ${PREFIX}/var/lib/proot-distro/installed-rootfs/ubuntu/root/.bash_functions
    cp .files/termux-ubuntu/.bash_logout ${PREFIX}/var/lib/proot-distro/installed-rootfs/ubuntu/root/.bash_logout
    cp .files/termux-ubuntu/.ghci ${PREFIX}/var/lib/proot-distro/installed-rootfs/ubuntu/root/.ghci
    cp .files/termux-ubuntu/.stack/config.yaml ${PREFIX}/var/lib/proot-distro/installed-rootfs/ubuntu/root/.stack/config.yaml
}
