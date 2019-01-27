FROM postgres:10-alpine

ENV POSTGRES_DB app
ENV POSTGRES_HOST postgresql
ENV POSTGRES_USER admin
ENV POSTGRES_PASSWORD admin
ENV DELAY 24h
ENV TOKEEP 10

VOLUME /backups

add resources/* /

ENTRYPOINT /entrypoint.sh
