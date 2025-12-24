FROM php:8.2-apache

COPY ./frontend/index.php /var/www/html/
COPY ./backend/backendDB.php /var/www/html/

RUN docker-php-ext-install mysqli

EXPOSE 80
