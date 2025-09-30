#!/usr/bin/env bash
echo "Set cron.database_name"
echo "cron.database_name = '$POSTGRES_DB'" >> /var/lib/postgresql/data/postgresql.conf

echo "Set shared_preload_libraries"
echo "shared_preload_libraries = 'pg_cron'" >> /var/lib/postgresql/data/postgresql.conf

pg_ctl restart

