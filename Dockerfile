FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
	php5-xdebug \
	php5-imagick \
