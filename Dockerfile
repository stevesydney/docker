FROM php:fpm

RUN apt-get update && apt-get install -y --install-recommends \ 
		autoconf \
		build-essential \
		checkinstall \
		libtool \
		phpunit \
		subversion \
		autotools-dev \
		automake

RUN svn checkout http://svn.osgeo.org/geos/trunk /geos-svn

RUN cd /geos-svn && ./autogen.sh

RUN cd /geos-svn && ./configure --enable-php

RUN cd /geos-svn && checkinstall --default --fstrans=no --pkgname=geos-svn --pkgversion=3.4.2-svn