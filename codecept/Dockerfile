FROM php:7.1-cli

RUN pecl install xdebug \
	&& docker-php-ext-enable xdebug
RUN apt-get update && apt-get install -y libxml2-dev \
	&& docker-php-ext-install xmlwriter
RUN docker-php-ext-install pcntl

RUN curl -LsS http://codeception.com/codecept.phar -o /usr/local/bin/codecept\
    && chmod a+x /usr/local/bin/codecept

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["codecept"]