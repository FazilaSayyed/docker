FROM ubuntu:latest

LABEL DEVOPSENGG="FAZILA"

RUN apt update

RUN apt install unzip apache2 -y

RUN rm -rf /var/www/html/index.html

WORKDIR /var/www/html

COPY oxer.zip
 
RUN unzip oxer.zip

RUN mv oxer/* .

EXPOSE 80

CMD ["apachectl" , "-D" , "FOREGROUND"]