#!/bin/bash

set -e

echo "开始部署 go 环境"
cd /tmp
curl -sSL -O https://gitee.com/itstrongs/shell-tools/raw/master/go/go1.22.2.linux-amd64.tar.gz
tar -zxvf go1.22.2.linux-amd64.tar.gz
mv go /usr/local/
rm -rf go1.22.2.linux-amd64.tar.gz

echo "export PATH=\$PATH:/usr/local/go/bin" >> ~/.bashrc
source ~/.bashrc