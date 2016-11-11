alias dockviz="docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"
alias brandonsim="java -jar /Users/andy/Dropbox/Georgia\ Tech/CS/2110/HW01/Brandonsim-2.7.4.jar"
tssh_function() {
    ssh $1 -t "tmux -CC attach || tmux -CC"
}
alias tssh=tssh_function