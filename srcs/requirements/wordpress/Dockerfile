FROM alpine:3.17


RUN apk update && apk upgrade && apk add --no-cache \
    php81 \
    php81-fpm \
    php81-fileinfo \
    php81-mbstring \
    php81-openssl \
    php81-xml \
    php81-dom \
    php81-exif \
    php81-zip \
    php81-mysqli \
    php81-json \
    php81-curl \
    php81-phar \
    wget \
    mariadb-client \
    unzip 

COPY ./requirements/wordpress/conf/www.conf /etc/php81/php-fpm.d/www.conf

WORKDIR /var/www

RUN wget https://wordpress.org/latest.zip && \
    unzip latest.zip && cp -rf wordpress/* . && rm -rf wordpress latest.zip && chmod -R 0777 wp-content/

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \ 
    && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./requirements/wordpress/conf/wp-config.sh .
COPY ./requirements/wordpress/conf/wait_for_it.sh .

RUN pwd && ls && chmod +x /var/www/wait_for_it.sh

RUN /var/www/wait_for_it.sh

EXPOSE 9000

CMD ["sh", "-c", "sh /var/www/wp-config.sh && /usr/sbin/php-fpm81 -F"]

