#!/bin/bash
yum -y install gtk+-devel gtk2-devel libXpm-devel libpng-devel giflib-devel libtiff-devel libjpeg-devel ncurses-devel gpm-devel dbus-devel dbus-glib-devel dbus-python GConf2-devel pkgconfig
cd /tmp && \
	wget http://ftp.gnu.org/gnu/emacs/emacs-24.5.tar.gz && \
	tar xzf emacs-24.5.tar.gz && \
	cd emacs-24.5 && \
	./configure --prefix=/usr/local --with-x-toolkit=gtk --without-gsettings && \
	make && make install && make clean && \
	rm -rf /tmp/emacs-24.5.tar.gz && rm -rf /tmp/emacs-24.5
