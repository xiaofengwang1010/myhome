alias lol='open ~/.lolcommits'
alias mute='osascript -e "set Volume 0"'

alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -AFG'
alias l='ls -hlFG'

alias rm='rm -i' # DON'T USE rm -rf ALWAYS, BE CAREFUL
alias rdf='rm -rf'

alias  d='cd ..'
alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'
alias up7='cd ../../../../../../..'
alias up8='cd ../../../../../../../..'
alias up9='cd ../../../../../../../../..'
alias recd='cd .. && cd -'

# shortcuts for entering specific project dir
alias tmp='cd ~/tmp/'
alias code='cd ~/code'
alias codejam='cd ~/code/codejam'
alias rea='cd ~/code/rea'
alias mock_ds='mockds'
alias rea-api='cd ~/code/rea/rea-api'
alias syndication-rest-api='cd ~/code/rea/syndication-rest-api'
alias qa='cd ~/code/rea/qa/'
alias e2e_rea_api='cd ~/code/rea/qa/e2e_rea_api'
alias e2e='e2e_rea_api'

alias blog='cd ~/code/blog/source/_posts'

alias hi=' history | less +G'

alias vi='/usr/bin/vim'
alias vim='vi'
alias vimrc='vim ~/.vimrc'

alias grep='grep -P -a --color=auto'

alias k9='kill -9'

alias bi='bundle install'
alias bu='bundle update'
alias bl='bundle list'
alias be='bundle exec'
alias br='bundle exec rspec'
alias bs='bundle exec spinach'
alias cuke='be cucumber '
alias brails='bundle exec rails'

alias sll='svn log | less'

alias reset-cisco='sudo SystemStarter restart CiscoVPN'
alias restart-cisco='reset-cisco'

alias spec='be spec --format nested --color '

alias g='git'

alias sqlplus='rlwrap sqlplus'

alias git-manual-page='open http://schacon.github.com/git/git.html'
alias cheatsheet-git='open http://cheat.errtheblog.com/s/git'
alias cheatsheet-resqueue='open http://whatcodecraves.com/articles/2010/06/22/resque_cheatsheet/index.html'
alias httpstatus='open http://www.iana.org/assignments/http-status-codes/http-status-codes.xml'
alias httpcode='httpstatus'

alias Downloads='cd ~/Downloads/'

alias resource='source ~/.bashrc'

alias t='task'
