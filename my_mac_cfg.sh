function change_dir {                                                                                                                                                                                   
  echo -e "from \033[36m`pwd`\033[0m"                                                                                                                                                                     
  cd $1                                                                                                                                                                                                
  echo -e "goto \033[33m`pwd`\033[0m"                                                                                                                                                                                                                                                                                                                                                     
}   
  
export WORKSPACE_PATH=~/gitlab # 这里改你自己的目录
alias show='echo -e "WORKSPACE_PATH=\033[33m${WORKSPACE_PATH}\033[0m"'                                                                                                                                                                                             
alias ci='change_dir $WORKSPACE_PATH/'                                                                                                                                                      
alias cs='change_dir $WORKSPACE_PATH/im_svr'                                                                                                                                                 
alias cgit='change_dir ~/gitlab'                                                                                                                                                      
alias Ag='ag --erl --go'
alias Agi='ag --erl --ignore-dir protobuff'
alias t='tmux'
alias ta='tmux attach'
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
alias tailf='tail -f'
alias myiex='iex -S mix'
