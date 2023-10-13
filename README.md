# my-env

快捷安装Debian环境
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/leonlee2013/my-env/main/debian_install.sh)"
```
快捷安装Mac环境
```bash
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/leonlee2013/my-env/main/mac_install.sh)"
```
Debian新环境需要处理下：
```bash
sudo  apt-get -y install curl
ls -al /bin/sh &&  sudo rm /bin/sh && sudo ln -s /bin/bash /bin/sh && ls -al /bin/sh
```
