FROM php:5.4-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable pdo_mysql

RUN curl -k -o /tmp/fluxbb-1.5.9.tar.gz https://fluxbb.org/download/releases/1.5.9/fluxbb-1.5.9.tar.gz; \
    tar xvzf /tmp/fluxbb-1.5.9.tar.gz --strip-components=1 -C /var/www/html/; \
    rm -rf /tmp/fluxbb-1.5.9.tar.gz; \
    curl -k -L -o /tmp/french_v1.5.9.tar.gz http://fluxbb.org/resources/translations/french/releases/1.5.9/french_v1.5.9.tar.gz; \
    tar xvzf /tmp/french_v1.5.9.tar.gz -C /var/www/html/lang/; \
    chown -R www-data /var/www/html/