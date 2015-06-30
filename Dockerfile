FROM php:apache

RUN apt-get update && apt-get install -y --install-recommends \
		php5-xdebug

#RUN svn checkout http://svn.osgeo.org/geos/trunk /geos-svn

#RUN cd /geos-svn && ./autogen.sh

#RUN cd /geos-svn && ./configure --enable-php

#RUN cd /geos-svn && checkinstall --default --fstrans=no --pkgname=geos-svn --pkgversion=3.4.2-svn

#COPY geos.ini /usr/local/etc/php/conf.d/

WORKDIR /var/www/html
