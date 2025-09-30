FROM postgres:17 AS postgres
RUN apt update -y && apt upgrade -y && \
    apt install -y postgresql-17-cron postgresql-17-http
COPY ./entrypoint.d/* /docker-entrypoint-initdb.d/

