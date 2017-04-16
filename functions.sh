# http://apple.stackexchange.com/questions/12161/os-x-terminal-must-have-utilities

update() {
    local brew="brew update; brew upgrade;"
    local gem="gem update;"
    local pip="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U -q"
    sh -c $brew$pip; sudo sh -c $gem
}

cdf() {
    target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
    if [ "$target" != "" ]; then
        cd "$target"; pwd
    else
        echo 'No Finder window found' >&2
    fi
}

man() {
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}

bootcamp() {
    sudo /usr/sbin/bless -mount /Volumes/BOOTCAMP -setBoot  --nextonly
    sudo /sbin/shutdown -r now
}

function anybar { echo -n $1 | nc -4u -w0 localhost ${2:-1738}; }

unformat() {
    pbpaste | pbcopy
}
