#!/bin/bash
#git clone https://github.com/tpope/vim-pathogen.git

 set -e
 ABSFile=`realpath $0`
 ExecPath=`realpath "$(dirname $ABSFile)"`
 cd $ExecPath
 # mkdir -p $ExecPath/.vim/bundle && cd $ExecPath/.vim/bundle
 #  for github in `cat $ExecPath/vim_plugins.ini` ; do
 #    git clone $github
 #  done

 echo "hello my-env!!!!"
