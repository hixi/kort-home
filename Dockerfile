FROM php:5.6-apache
COPY ./ /var/www/html/
ADD ./.htaccess_local /var/www/html/.htaccess
RUN a2enmod rewrite
