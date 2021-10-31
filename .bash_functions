mcd() {
    mkdir -p "$1"
    cd "$1"
}

cds() {
    cd "$1"
    ls -a
}

upd() {
    echo -e "Updating \033[33mapt\033[0m packages\n"
    pkg update -y
    echo -e "\nUpdating \033[33mpip\033[0m\n"
    pip install --upgrade pip
    echo -e "\nUpdating \033[33mpip\033[0m packages\n"
    pip install --upgrade
    echo -e "\nUpdating \033[33mnpm\033[0m"
    npm install --global npm@latest
    echo -e "\nUpdating \033[33mnpm\033[0m packages"
    npm update --global
}

setup-motd() {
    cp .files/motd ${PREFIX}/etc/motd
    cp .files/bash.bashrc ${PREFIX}/etc/bash.bashrc
}
