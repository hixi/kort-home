FROM php:5.6-apache
RUN apt-get update && apt-get install -y ruby
RUN gem install sass
COPY ./ /var/www/html/
RUN sass --default-encoding utf-8 /var/www/html/resources/styles/styles.scss > /var/www/html/resources/styles/styles.css
ADD ./.htaccess_local /var/www/html/.htaccess
RUN a2enmod rewrite
