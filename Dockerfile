ARG PHP_VERSION
FROM php:$PHP_VERSION

RUN apt-get update && \
    apt-get install -y \
        libmcrypt-dev \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libxml2-dev && \
    apt-get clean && \
    apt-get autoclean

RUN docker-php-ext-install mysqli gd pdo_mysql pdo soap

WORKDIR /var/www/html
