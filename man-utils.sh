pman () {
    man -t $@ | ps2pdf - - | open -f -a /Applications/Preview.app
}

tman () {
  MANWIDTH=160 MANPAGER='col -bx' man $@ | mate
}

quit () {
    for app in $*; do
        osascript -e 'quit app "'$app'"'
    done
}