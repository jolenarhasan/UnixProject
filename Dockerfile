FROM php:8.2-apache

COPY index.php /var/www/html/
COPY db.php /var/www/html/

RUN docker-php-ext-install mysqli

EXPOSE 80
