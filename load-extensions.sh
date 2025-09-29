#!/usr/bin/env bash
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<EOF
CREATE EXTENSION pg_cron;
CREATE EXTENSION pg_http;
SELECT * FROM pg_extenstion;
EOF

echo "shared_preload_libraries = 'pg_cron'" >> /var/lib/postgresql/data/postgresql.conf
echo "cron.database_name = '$POSTGRES_DB'" >> /var/lib/postgresql/data/postgresql.conf

