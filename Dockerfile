FROM hshar/webapp
ARG  DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
ADD . /var/www/html/
RUN apt install php libapache2-mod-php -y
ENTRYPOINT  apachectl -D FOREGROUND
