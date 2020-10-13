## Setup Reminders
# - Bash Completion

## Display Git Branch with Styling in Command Prompt
# Code source: https://gist.github.com/joseluisq/1e96c54fa4e1e5647940
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\w/\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export PROMPT_DIRTRIM=2

## Aliases
# Python
alias p3='python3'

# Rails
alias be='bundle exec'

# Git
alias gco='git checkout'
alias gcom='git checkout master'
alias gau='git add -u'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gs='git status'
alias gsts='git stash save'
alias gstl='git stash list'
alias grbm='git rebase -i master'
alias gp='git push'
alias gpfwl='git push --force-with-lease'
alias gd='git diff HEAD'
