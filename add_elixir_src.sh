#!/bin/bash
set -e
CurPath=`pwd`
# 获取当前日期和时间，并格式化为YYYY-MM-DD_HH-MM-SS的形式
CurrentDate=$(date +"%Y-%m-%d_%H-%M-%S")
WorkPath="elixir_src_${CurrentDate}"
mkdir -p $WorkPath
cd $WorkPath
wget https://github.com/elixir-lang/elixir/archive/refs/tags/v1.12.3.tar.gz
tar -xzf ./v1.12.3.tar.gz
cp -r elixir-1.12.3/lib /usr/local/lib/elixir/
cd $CurPath
rm -rf $WorkPath
