FROM php:7.2-fpm
MAINTAINER Usman Akram <usman.akram99@gmail.com>

RUN apt-get update && apt-get -y install git && apt-get -y install zip && apt-get -y install supervisor cron

RUN  apt-get install -y libmcrypt-dev \
        libmagickwand-dev --no-install-recommends \
        && pecl install mcrypt-1.0.2 \
        && docker-php-ext-install pdo_mysql \
        && docker-php-ext-enable mcrypt