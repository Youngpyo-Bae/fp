FROM postgres:11
LABEL maintainer "Marco De Donno <Marco.DeDonno@unil.ch>"

################################################################################
###	System update

RUN apt-get update && \
    apt-get -y upgrade

################################################################################
###	Postgresql configuration files

ADD ./config/postgresql.conf /postgresql.conf
ADD ./config/pg_hba.conf /pg_hba.conf

################################################################################
###	Healthcheck

COPY /scripts/docker-healthcheck /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-healthcheck
HEALTHCHECK CMD [ "docker-healthcheck" ]

################################################################################
###	Startup scripts

ADD ./scripts/entrypoint.sh     /scripts/entrypoint.sh

RUN chmod a+x /scripts/entrypoint.sh

################################################################################
###	Container run arguments

ENTRYPOINT [ "/scripts/entrypoint.sh" ] 
