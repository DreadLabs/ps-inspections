FROM debian:8

MAINTAINER Thomas Juhnke <dev@van-tomas.de>

ENV CODESNIFFER_VERSION 2.8.1
ENV PHPMD_VERSION 2.6.1
ENV PHPCSFIXER_VERSION v2.16.1

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
    && apt-get install -y apt-transport-https curl \
    && echo 'deb https://packages.dotdeb.org jessie all' > /etc/apt/sources.list.d/dotdeb.list \
    && curl https://www.dotdeb.org/dotdeb.gpg | apt-key add - \
    && apt-get update \
    && apt-get install -y php7.0-cli php7.0-xml \
    && apt-get autoremove -y --purge \
    && apt-get autoclean \
    && apt-get clean \
    && rm -rf /var/lib/apt \
    && curl -o /usr/bin/phpcs.phar -L https://github.com/squizlabs/PHP_CodeSniffer/releases/download/${CODESNIFFER_VERSION}/phpcs.phar \
    && chmod +x /usr/bin/phpcs.phar \
    && curl -o /usr/bin/phpmd.phar -L https://phpmd.org/static/${PHPMD_VERSION}/phpmd.phar \
    && chmod +x /usr/bin/phpmd.phar \
    && curl -o /usr/bin/php-cs-fixer.phar -L https://github.com/FriendsOfPHP/PHP-CS-Fixer/releases/download/${PHPCSFIXER_VERSION}/php-cs-fixer.phar \
    && chmod +x /usr/bin/php-cs-fixer.phar
