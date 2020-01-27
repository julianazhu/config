# Git branch in prompt.
# Code source: https://gist.github.com/joseluisq/1e96c54fa4e1e5647940
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\w/\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PROMPT_DIRTRIM=2

# Bash Shortcuts
## Git
alias be='bundle exec '
alias gco='git checkout '
alias gcom='git checkout master'
alias gs='git status '
alias fwl='force-with-lease'
alias gupdate='git checkout master; git pull; bundle install; rake db:migrate'
