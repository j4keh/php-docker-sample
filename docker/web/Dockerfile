FROM php:7.4-fpm-alpine

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY ./php.ini /usr/local/etc/php/
COPY ./xdebug.ini /usr/local/etc/php/conf.d/

RUN apk upgrade --update && \
  apk --no-cache add icu-dev autoconf make g++ gcc oniguruma-dev

RUN docker-php-ext-install  -j$(nproc) iconv intl mbstring && \
  pecl install xdebug && \
  docker-php-ext-enable xdebug
