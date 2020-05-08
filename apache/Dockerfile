FROM debian:10-slim
LABEL maintainer "Marco De Donno <Marco.DeDonno@unil.ch>"

################################################################################
###    System update

RUN apt-get update

################################################################################
###    Installation of Apache and PHP

RUN apt-get install -y apache2 libapache2-mod-php php php-mbstring php-pgsql php-gd php-imagick

################################################################################
###    Configure the locales

RUN apt-get install -y locales

RUN echo "LC_ALL=en_US.UTF-8" >> /etc/environment && \
    echo "en_US.UTF-8 UTF-8"  >> /etc/locale.gen  && \
    echo "LANG=en_US.UTF-8"   >  /etc/locale.conf

RUN locale-gen en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

################################################################################
###    Configure Apache

RUN usermod -U www-data && \
    chsh -s /bin/bash www-data

RUN echo 'ServerName PiAnoS-apache' >> /etc/apache2/conf-enabled/servername.conf

RUN a2enmod rewrite

COPY run_apache.sh /var/www/
RUN chmod +x /var/www/run_apache.sh
RUN chmod 755 /var/www/run_apache.sh

EXPOSE 80

WORKDIR /var/www/html

CMD [ "/var/www/run_apache.sh" ]
ENTRYPOINT [ "/var/www/run_apache.sh" ]

