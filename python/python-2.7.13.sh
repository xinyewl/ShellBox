#!/bin/bash
clear
echo "
=======================================================
         CentOS 6.8 编译安装 Python 2.7.13
                   一键自动脚本
                作者：www.ikxin.com
            Python 源采用搜狐 yum 资料库
======================================================="
echo "查看当前系统中的 Python 版本！"
python --version
echo "返回 Python 2.6.6 为正常！"
echo "检查 CentOS 版本！"
cat /etc/redhat-release
echo "返回 CentOS release 6.8 (Final) 为正常！"
echo "开始安装所有的开发工具包！"
yum groupinstall -y "Development tools"
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel
echo "开发工具包安装成功！开始安装 Python ！"
wget http://mirrors.sohu.com/python/2.7.13/Python-2.7.13.tgz
tar zxf Python-2.7.13.tgz
cd Python-2.7.13
./configure
make && make install
clear
echo "安装成功！"
echo "开始更新系统默认 Python 版本！"
mv /usr/bin/python /usr/bin/python.old
rm -f /usr/bin/python-config
ln -s /usr/local/bin/python /usr/bin/python
ln -s /usr/local/bin/python-config /usr/bin/python-config
ln -s /usr/local/include/python2.7/ /usr/include/python2.7
echo "新的 Python 版本！"
python --version
echo "返回 Python 2.7.13 为正常！"
echo "为新版 Python 安装 setuptools ！"
wget https://bootstrap.pypa.io/ez_setup.py -O - | python
echo "为新版 Python 安装 pip ！"
easy_install pip
echo "为新版 Python 安装 distribute ！"
pip install distribute
clear
cp -r /usr/lib/python2.6/site-packages/yum /usr/local/lib/python2.7/site-packages/
cp -r /usr/lib/python2.6/site-packages/rpmUtils /usr/local/lib/python2.7/site-packages/
cp -r /usr/lib/python2.6/site-packages/iniparse /usr/local/lib/python2.7/site-packages/
cp -r /usr/lib/python2.6/site-packages/urlgrabber /usr/local/lib/python2.7/site-packages/
cp -r /usr/lib64/python2.6/site-packages/rpm /usr/local/lib/python2.7/site-packages/
cp -r /usr/lib64/python2.6/site-packages/curl /usr/local/lib/python2.7/site-packages/
cp -p /usr/lib64/python2.6/site-packages/pycurl.so /usr/local/lib/python2.7/site-packages/
cp -p /usr/lib64/python2.6/site-packages/_sqlitecache.so /usr/local/lib/python2.7/site-packages/
cp -p /usr/lib64/python2.6/site-packages/sqlitecachec.py /usr/local/lib/python2.7/site-packages/
cp -p /usr/lib64/python2.6/site-packages/sqlitecachec.pyc /usr/local/lib/python2.7/site-packages/
cp -p /usr/lib64/python2.6/site-packages/sqlitecachec.pyo /usr/local/lib/python2.7/site-packages/
echo "
=======================================================
         CentOS 6.8 编译安装 Python 2.7.13
                   一键自动脚本
                作者：www.ikxin.com
            Python 源采用搜狐 yum 资料库
======================================================="