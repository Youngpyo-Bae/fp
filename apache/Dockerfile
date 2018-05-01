FROM debian
LABEL maintainer "Marco De Donno <Marco.DeDonno@unil.ch>"

RUN apt update && \
	apt -y full-upgrade

RUN apt install -y apache2 libapache2-mod-php php php-mbstring php-pgsql php-gd php-imagick

RUN apt install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

RUN usermod -U www-data && chsh -s /bin/bash www-data

RUN echo 'ServerName PiAnoS-apache' >> /etc/apache2/conf-enabled/servername.conf

RUN a2enmod rewrite 

COPY run_apache.sh /var/www/
RUN chmod +x /var/www/run_apache.sh
RUN chmod 755 /var/www/run_apache.sh

EXPOSE 80

WORKDIR /var/www/html
CMD [ "/var/www/run_apache.sh" ]
ENTRYPOINT [ "/var/www/run_apache.sh" ]
