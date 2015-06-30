FROM php:apache

RUN apt-add-repository ppa:phalcon/stable

RUN apt-get update && apt-get install -y --install-recommends \
		php5-phalcon \
	&& docker-php-ext-install php5-xdebug
