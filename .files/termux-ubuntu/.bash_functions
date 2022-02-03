mcd() {
    mkdir -p "$1"
    cd "$1"
}

cds() {
    cd "$1"
    ls -a
}
