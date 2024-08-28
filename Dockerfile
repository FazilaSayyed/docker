FROM ubuntu:latest

LABEL DEVOPSENGG="FAZILA"

RUN apt update

RUN apt install unzip apache2 -y

RUN rm -rf /var/www/html/index.html

WORKDIR /var/www/html

COPY https://github.com/FazilaSayyed/docker/blob/main/Oxer%20Free%20Website%20Template%20-%20Free-CSS.com.zip .
 
RUN unzip oxer.zip

RUN mv oxer/* .

EXPOSE 80

CMD ["apachectl" , "-D" , "FOREGROUND"]