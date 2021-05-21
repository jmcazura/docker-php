ARG PHP_VERSION
FROM php:$PHP_VERSION

RUN apt-get update && \
    apt-get install -y \
        libmcrypt-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libxml2-dev \
	libzip-dev && \
    apt-get clean && \
    apt-get autoclean

RUN docker-php-ext-install zip mysqli gd pdo_mysql pdo soap

RUN a2enmod rewrite

WORKDIR /var/www/html
