FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
	&& docker-php-ext-install php5-xdebug gd imagick
