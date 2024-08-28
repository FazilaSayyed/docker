FROM ubuntu:latest

LABEL DEVOPSENGG="FAZILA"

RUN apt update

RUN apt install unzip apache2 -y

RUN rm -rf /var/www/html/index.html

WORKDIR /var/www/html

COPY oxer-html /var/www/html

EXPOSE 80

CMD ["apachectl , "D" , "FOREGROUND"]