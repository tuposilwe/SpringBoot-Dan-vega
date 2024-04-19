#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER myuser;
    CREATE DATABASE runners;
    GRANT ALL PRIVILEGES ON DATABASE runners TO myuser;
EOSQL