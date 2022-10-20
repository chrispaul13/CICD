FROM php:7.4-apache
run docker-php-ext-install mysqli
run apt-get update && apt-get install -y
run docker-php-ext-install pdo pdo_mysql

COPY ./ApplicationWeb/  /var/www/html/
run a2enmod rewrite
EXPOSE 80
EXPOSE 8080

#docker build -t cicdweb .         // crear imagen con datos
#docker run -p 80:80 -p 8080:80 -d --name cicdwebServer cicdweb
