#!/bin/bash
clear
echo "
=========================================
        心叶网络shc一键安装脚本
       作者：心叶（www.ikxin.com）
=========================================
"
echo "正在安装yum组件！"
yum -y install gcc gcc-c++
echo "安装成功！回车继续安装shc加密程序！"
read
echo "开始安装！"
cd /root
rm -rf /root/shc*
wget http://www.datsi.fi.upm.es/~frosal/sources/shc-3.8.7.tgz >/dev/null 2>&1
tar vxf shc-3.8.7.tgz >/dev/null 2>&1
mkdir -p /usr/local/man/man1
cd shc-3.8.7
make install<<EOF
y
EOF
echo "安装完毕！回车跳转到使用方法！"
read
clear
echo "
=========================================
        心叶网络shc一键安装脚本
              安装成功！！！

  使用方法：
  shc -r -v -f xxxx.sh
  -r 使脚本适用其他操作系统
  -v 显示加密过程
  -f 后面跟需要加密的文件
  
  运行后会生成两个文件：
  xxxx.sh.x 和 xxxx.sh.x.c

  xxxx.sh.x 二进制文件，赋予权限后执行
  xxxx.sh.x.c C文件，可以删除

  作者：心叶（www.ikxin.com）

=========================================
"