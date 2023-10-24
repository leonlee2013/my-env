function git_branch_name {
  git symbolic-ref --short HEAD 2>/dev/null
}

function git_branch_prompt {
  local branch=`git_branch_name`
  if [ $branch  ]; then
    printf " git:%s" $branch;
  fi
}

# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]->\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\e[32m$(git_branch_prompt)\e[0m\$ '
PS1="[\u@\h \W]\$ "
#PS1='[\u@\h \W\e[32m$(git_branch_prompt)\e[0m]\$ '

export HISTTIMEFORMAT='%F %T '

function change_dir {                                                                                                                                                                                   
  echo -e "from \033[36m`pwd`\033[0m"                                                                                                                                                                     
  cd $1                                                                                                                                                                                                
  echo -e "goto \033[33m`pwd`\033[0m"                                                                                                                                                                                                                                                                                                                                                     
}   
  
  
export WORKSPACE_PATH=/app # 这里改你自己的目录
alias show='echo -e "WORKSPACE_PATH=\033[33m${WORKSPACE_PATH}\033[0m"'                                                                                                                                                                                             
alias ci='change_dir $WORKSPACE_PATH/'                                                                                                                                                      
alias cs='change_dir $WORKSPACE_PATH/im_svr'
alias cc='change_dir $WORKSPACE_PATH/im_connection'
alias cb='change_dir $WORKSPACE_PATH/biz_http'
alias ch='change_dir $WORKSPACE_PATH/biz_channel'
alias cgit='change_dir ~/gitlab'                                                                                                                                                      
alias Ag='ag --erl --go'
alias Agi='ag --erl --ignore-dir protobuff'
alias agu='ag -u'
alias agq='ag -Q'
alias t='tmux'
alias ta='tmux attach'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias tailf='tail -f'
alias myiex='iex -S mix'
