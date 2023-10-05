#!/bin/bash
#git clone https://github.com/tpope/vim-pathogen.git

set -e
CurPath=`pwd`
# 获取当前日期和时间，并格式化为YYYY-MM-DD_HH-MM-SS的形式
CurrentDate=$(date +"%Y-%m-%d_%H-%M-%S")
WorkPath="myenv_${CurrentDate}"
mkdir -p $WorkPath
cd $WorkPath
echo "配置mac环境开始..."
#配置vim
git clone https://github.com/leonlee2013/my-vim8
cd my-vim8 && ./install.sh
#配置bashrc
wget -O ~/.my_config.sh https://raw.githubusercontent.com/leonlee2013/my-env/main/my_config.sh
echo "#自定义配置
source ~/.my_config.sh" >> ~/.zshrc
echo "配置环境完成！！！"
cd $CurPath
rm -rf $WorkPath
echo "source ~/.bashrc"
source ~/.zshrc
