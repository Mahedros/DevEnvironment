function python {
    if [ -z $CONDA_PREFIX ]
    then
        winpty ~/AppData/Local/Continuum/Anaconda2/python $@;
    else
        winpty $CONDA_PREFIX/python $@;
    fi
}

alias repo='~/fetchAll.sh'
alias git-tree='git log --graph --oneline --all'
alias git-track-branches='~/br.sh'
alias untar='tar -xvf'
alias untargz='tar -xzvf'
longestLine() { awk 'length > max_length {max_length = length; longest_line = $0} END { print longest_line }' "$@"; wc -L < "$@"; }
