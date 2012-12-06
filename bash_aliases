alias lol='open ~/.lolcommits'
alias mute='osascript -e "set Volume 0"'

alias ls='ls -FG'
alias ll='ls -lFG'
alias la='ls -AFG'
alias l='ls -hlFG'

alias rm='rm -i' # DON'T USE rm -rf ALWAYS, BE CAREFUL
alias rdf='rm -rf'

alias up='cd ..'
alias up2='cd ../..'
alias up3='cd ../../..'
alias up4='cd ../../../..'
alias up5='cd ../../../../..'
alias up6='cd ../../../../../..'
alias up7='cd ../../../../../../..'
alias up8='cd ../../../../../../../..'
alias up9='cd ../../../../../../../../..'
alias back='cd -'
alias recd='up && back'

# shortcuts for entering specific project dir
alias tmp='cd ~/tmp/'
alias code='cd ~/code'
alias codejam='cd ~/code/codejam'

alias blog='cd ~/code/blog/source/_posts'

alias twtb='cd ~/code/twtb'

alias hi=' history | less +G'

alias vimrc='vim ~/.vimrc'

alias grep='grep -a --color=auto'

alias k9='kill -9'

alias rake='time rake'
alias bi='bundle install'
alias bu='bundle update'
alias bl='bundle list'
alias be='time bundle exec'
alias br='be rspec --format documentation --color --profile'
alias rspec='br'
alias bs='be spinach'
alias spinach='bs'
alias cuke='be cucumber '
alias cucumber='cuke'
alias brails='be rails'

alias sll='svn log | less'

alias reset-cisco='sudo SystemStarter restart CiscoVPN'
alias restart-cisco='reset-cisco'

alias spec='be spec --format documentation --color --profile'

alias g='git'
alias d='git diff'

alias sqlplus='rlwrap sqlplus'

alias git-manual-page='open http://schacon.github.com/git/git.html'
alias cheatsheet-git='open http://cheat.errtheblog.com/s/git'
alias cheatsheet-resqueue='open http://whatcodecraves.com/articles/2010/06/22/resque_cheatsheet/index.html'

alias httpstatus='open http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html'
alias httpcode='httpstatus'

alias Downloads='cd ~/Downloads/'

alias resource='source ~/.bashrc'

alias t='task'

alias please='sudo'
alias wtf='tail -f /var/log/{dmesg,messages,*{,/*}{log,err}}'
