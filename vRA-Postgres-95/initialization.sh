#!/bin/bash
# https://hub.docker.com/_/postgres
#  Initialization Scripts

set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE ROLE vcac;
EOSQL