#!/bin/bash
cd /tmp && \
	wget https://www.imagemagick.org/download/ImageMagick.tar.gz && \
	tar xzf ImageMagick.tar.gz && \
	cd ImageMagick* && \
	./configure --prefix=/usr && \
	make && \
	make install && \
	make clean && \
	echo "export PKG_CONFIG_PATH=/usr/lib/pkgconfig" >> /etc/bashrc && \
	source /etc/bashrc && \
	rm -rf /tmp/ImageMagick.tar.gz && rm -rf /tmp/ImageMagick*
#printf "export PKG_CONFIG_PATH=/usr/lib/pkgconfig" >> /home/willy/.bash_profile
