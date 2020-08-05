FROM ubuntu:18.04
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y update

RUN apt-get autoremove -y
RUN apt-get install -y apache2
RUN apt-get install -y  systemd

RUN a2enmod rewrite
RUN apt-get -y install php7.2
RUN chmod 0777 /var/www/html
COPY index.php /var/www/html/
RUN chmod 0777 /var/www/html/index.php
CMD ["timedatectl","set-timezone","Asin/Phnom_Penh"]
