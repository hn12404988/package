#!/bin/bash
# Install GCC 5.4
yum install -y tar libmpc-devel mpfr-devel gmp-devel
yum install -y zlib-devel*
mkdir /tmp/gcc && cd /tmp/gcc
cd /tmp/gcc
curl ftp://ftp.gnu.org/pub/gnu/gcc/gcc-5.4.0/gcc-5.4.0.tar.bz2 -O
tar xvfj tmp/gcc/gcc-5.4.0.tar.bz2
cd tmp/gcc/gcc-5.4.0
mkdir /usr/local/gcc_5.4
./configure --prefix=/usr/local/gcc_5.4 --with-system-zlib --disable-multilib --enable-languages=c,c++
make -j 4
make install
cd /tmp && rm -rf /tmp/gcc
# Upgrade libstdc++ to new one
cp /usr/local/gcc_5.4/lib64/libstdc++.so.6.0.21 /usr/lib64
cd /usr/lib64
rm -rf libstdc++.so.6
ln -s libstdc++.so.6.0.21 libstdc++.so.6
# Link new gcc to command line
cd /usr/bin
rm -rf g++ && rm -rf gcc
ln -s /usr/local/gcc_5.4/bin/g++ g++
ln -s /usr/local/gcc_5.4/bin/gcc gcc
