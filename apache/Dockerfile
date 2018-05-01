FROM debian
LABEL maintainer "Marco De Donno <Marco.DeDonno@unil.ch>"

RUN apt update && \
	apt -y full-upgrade

RUN apt install -y apache2 libapache2-mod-php php php-mbstring php-pgsql php-gd php-imagick

RUN apt install -y locales
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
