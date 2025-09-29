FROM postgres:17 AS postgres
RUN apt upgrade -y && apt update -y && \
    apt install -y postgresql-17-cron postgresql-17-http
COPY ./load-extensions.sh /docker-entrypoint-initdb.d/

