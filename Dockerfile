FROM php:apache

RUN apt-get update && apt-get install -y --install-recommends && docker-php-ext-install php5-xdebug
