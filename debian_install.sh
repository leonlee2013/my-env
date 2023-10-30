#!/bin/bash
#git clone https://github.com/tpope/vim-pathogen.git

set -e
CurPath=`pwd`
# 获取当前日期和时间，并格式化为YYYY-MM-DD_HH-MM-SS的形式
CurrentDate=$(date +"%Y-%m-%d_%H-%M-%S")
WorkPath="myenv_${CurrentDate}"
mkdir -p $WorkPath
cd $WorkPath
echo "配置环境开始..."
which sudo || apt-get -y install sudo
# sudo apt-get -y install lrzsz tmux
sudo apt-get -y install git wget universal-ctags wget tree silversearcher-ag vim vim-nox 
#配置bashrc
#wget -O ~/.my_debian_cfg.sh https://raw.githubusercontent.com/leonlee2013/my-env/main/my_debian_cfg.sh
curl https://raw.githubusercontent.com/leonlee2013/my-env/main/my_debian_cfg.sh > ~/.my_debian_cfg.sh
echo "#自定义配置
source ~/.my_debian_cfg.sh" >> ~/.bashrc
echo "配置环境完成！！！"
#配置vim
git clone https://github.com/leonlee2013/my-vim8
cd my-vim8 && ./install.sh
cd $CurPath
rm -rf $WorkPath
echo "source ~/.bashrc"
source ~/.bashrc
