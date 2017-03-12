#!/bin/bash
yum update -y
yum install -y epel-release wget
yum install -y curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils-MakeMaker
yum remove -y git
cd /tmp && \
	wget https://www.kernel.org/pub/software/scm/git/git-2.9.3.tar.gz && \
	tar xzf git-2.9.3.tar.gz && \
	cd git-2.9.3 && \
	make prefix=/usr/local/git all && \
	make prefix=/usr/local/git install && \
	make clean && \
	echo "export PATH=$PATH:/usr/local/git/bin" >> /etc/bashrc && \
	source /etc/bashrc && \
	rm -rf /tmp/git-2.9.3.tar.gz && rm -rf /tmp/git-2.9.3 && \
	git config --global user.name "Willy" && \
	git config --global user.email "hn12404988@hotmail.com"
