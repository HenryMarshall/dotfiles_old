# listing
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'
alias l.='ls -d .*'
alias t3='tree -L 3'

alias bigdirs='du -S | sort -n -r | less'

# typos
alias exti='exit'

# navigation
alias dl='cd ~/dl/ff'
alias gtd='cd ~/gtd'

# bash
alias reload='source ~/.bashrc'
alias c='clear'
alias h='history | grep $1'
alias top-commands="history | awk '{CMD[\$2]++;count++;}END { for (a in CMD)print CMD[a] \" \" CMD[a]/count*100 \"% \" a;}' | grep -v \"./\" | column -c3 -s \" \" -t | sort -nr | nl |  head -n10"
# "alert" for long running commands. (e.g., `sleep 10; alert`)
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias :q='exit'
alias ZZ='exit'

# default flags
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias df='df -h'

# apt-get
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade -y'
alias uu='sudo apt-get update && sudo apt-get upgrade -y'
alias search='apt-cache search'
alias inst='sudo apt-get install -y'
alias remp='sudo apt-get remove'
alias cleanup='sudo apt-get autoclean && sudo apt-get autoremove && sudo apt-get clean && sudo apt-get remove'

# rails
alias br='bin/rails'
alias bk='bin/rake'
alias ns='npm start'

# android
alias and='/opt/android-studio/bin/studio.sh'

# git
alias gb='git branch'
alias gch='git checkout'
alias gm='git merge --no-ff'
alias gmt='git mergetool'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -m'
alias gac='git commit -a -m'
alias gst='git status'
alias gd='git diff'
alias gl1='git log --pretty=oneline --abbrev-commit -5'
alias gl='git pull'
alias gh='git push'
alias gho='git push origin'
alias ghom='git push origin master'
alias ghh='git push heroku master'
alias ghhm='git push; git push heroku; heroku run rake db:migrate'

# misc
alias pg='ping -c3 www.google.com'
alias ffpm='firefox --new-instance --ProfileManager'
alias serve='python -m SimpleHTTPServer'
alias serve3='python -m http.server'
alias exip='curl ifconfig.me'
alias grepf='grep -iIrn'
# The KDE network manager (handles vpn)
alias knm='kde5-nm-connection-editor'
alias cstart='$HOME/crashplan/bin/CrashPlanEngine start'
# pretty print json from stdin or appended filepath
alias pp='python -m json.tool'
alias plover4='unset XDG_CURRENT_DESKTOP; $HOME/dev/plover/master/launch.sh'

# tmux
alias tmux='TERM=screen-256color tmux'
alias mux='TERM=screen-256color mux'
alias ta='TERM=screen-256color tmux attach -t'
alias tn='TERM=screen-256color tmux new -s'
alias tl='tmux ls'

alias chh.='sudo chown -R henry . && sudo chgrp -R henry .'
alias ascii_table='man ascii | less --pattern=Tables'

# todo.txt
alias t="todo.sh -t"
alias vt="vim ~/sync/Dropbox/todo/todo.txt"

# deep learning class

alias aws-get-p2='export instanceId=`aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped,Name=instance-type,Values=p2.xlarge" --query "Reservations[0].Instances[0].InstanceId"` && echo $instanceId'
alias aws-get-t2='export instanceId=`aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped,Name=instance-type,Values=t2.xlarge" --query "Reservations[0].Instances[0].InstanceId"` && echo $instanceId'
alias aws-start='aws ec2 start-instances --instance-ids $instanceId && aws ec2 wait instance-running --instance-ids $instanceId && export instanceIp=`aws ec2 describe-instances --filters "Name=instance-id,Values=$instanceId" --query "Reservations[0].Instances[0].PublicIpAddress"` && echo $instanceIp'
alias aws-ip='export instanceIp=`aws ec2 describe-instances --filters "Name=instance-id,Values=$instanceId" --query "Reservations[0].Instances[0].PublicIpAddress"` && echo $instanceIp'
alias aws-ssh='ssh -i ~/.ssh/aws-key-fast-ai.pem ubuntu@$instanceIp'
alias aws-stop='aws ec2 stop-instances --instance-ids $instanceId'
alias aws-state='aws ec2 describe-instances --instance-ids $instanceId --query "Reservations[0].Instances[0].State.Name"'
