#!/bin/bash
#git clone https://github.com/tpope/vim-pathogen.git

set -e
ABSFile=`pwd`
ExecPath=`realpath "$(dirname $ABSFile)"`
cd $ExecPath
# 获取当前日期和时间，并格式化为YYYY-MM-DD_HH-MM-SS的形式
CurrentDate=$(date +"%Y-%m-%d_%H-%M-%S")
WorkPath="myenv_${CurrentDate}"
mkdir -p $WorkPath
cd $WorkPath
pwd
echo "配置环境开始..."
git clone https://github.com/leonlee2013/my-vim8
cd my-vim8 && ./install.sh
pwd
echo "配置环境完成！！！"
cd $ExecPath
rm -rf $WorkPath
