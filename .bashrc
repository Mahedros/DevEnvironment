alias repo='~/fetchAll.sh'
alias git-tree='git log --graph --oneline --all'
alias git-track-branches='~/br.sh'
alias untar='tar -xvf'
alias untargz='tar -xzvf'
alias sl='ls'
longestLine() { awk 'length > max_length {max_length = length; longest_line = $0} END { print longest_line }' "$@"; wc -L < "$@"; }
