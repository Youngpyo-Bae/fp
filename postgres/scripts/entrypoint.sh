#!/bin/sh

/docker-entrypoint.sh postgres \
    -c config_file=/postgresql.conf \
    -c hba_file=/pg_hba.conf
