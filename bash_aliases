export EDITOR='vi'
export JAVA_HOME=/usr/bin/java

export PS1='\[\033[01;32m\]\u\[\033[01;34m\] \w\[\033[31m\]$(__git_ps1 " (%s)")\[\033[01;34m\]$\[\033[00m\] '

alias pop='popd'
alias push='pushd .'

alias gl='git log --graph --pretty=format:'\''%Cred%h%Creset -%C(yellow)%d%Creset %Cblue%an%Creset - %s %Cgreen(%cr)%Creset'\'' --abbrev-commit --date=relative'
