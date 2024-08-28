FROM ubuntu:latest

Label DEVOPSENGG="FAZILA"

RUN apt update

RUN apt install unzip apache2 -y

RUN rm -rf /var/www/html/index.html

WORKDIR /var/www/html

copy oxer-html /var/www/html

Expose 80

CMD ["apachectl , "D" , "FOREGROUND"]