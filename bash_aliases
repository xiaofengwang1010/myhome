# some more ls aliases
alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -AFG'
alias l='ls -lFG'

# some more rm aliases
alias rm='rm -i'

alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'

# shortcuts for entering specific project dir
alias code='cd ~/code'
alias rea='cd ~/code/rea'
alias mock_ds='mockds'
alias rea-api='cd ~/code/rea/rea-api'
alias syndication-rest-api='cd ~/code/rea/syndication-rest-api'
alias api='syndication-rest-api'
alias qa='cd ~/code/rea/qa/'
alias e2e_rea_api='cd ~/code/rea/qa/e2e_rea_api'
alias e2e='e2e_rea_api'

alias blog='cd ~/code/blog/_posts'

alias hi=' history | less +G'

alias vi='/usr/bin/vim'
alias vim='vi'
alias vimrc='vim ~/.vimrc'

alias grep='grep -P -a --color=auto'
alias be='bundle exec'
alias be_rs='bundle exec rails server'
alias be_rc='bundle exec rails console'
alias brails='bundle exec rails'
alias brake='bundle exec rake'
alias brspec='bundle exec rspec'
alias sll='svn log | less'

alias reset-cisco='sudo SystemStarter restart CiscoVPN'
alias restart-cisco='reset-cisco'
