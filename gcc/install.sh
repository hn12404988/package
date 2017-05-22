#!/bin/bash
yum install libmpc-devel mpfr-devel gmp-devel
yum install zlib-devel*
mkdir /tmp/gcc && cd /tmp/gcc
cd /tmp/gcc
curl ftp://ftp.gnu.org/pub/gnu/gcc/gcc-5.4.0/gcc-5.4.0.tar.bz2 -O
tar xvfj gcc-5.4.0.tar.bz2
cd gcc-5.4.0
mkdir /usr/local/gcc_5.4
./configure --prefix=/usr/local/gcc_5.4 --with-system-zlib --disable-multilib --enable-languages=c,c++
make -j 4
make install
cd /tmp && rm -rf /tmp/gcc
