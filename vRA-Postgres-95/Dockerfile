# docker build -t vra-postgres-95 .
# docker run -d --name vra-postgres -v $HOME/Logs/:/var/lib/postgresql/backups vra-postgres-95

# TODO: add scripts to check DBs for known issues

FROM postgres:9.5

COPY ./initialization.sh /docker-entrypoint-initdb.d/
COPY --chown=postgres:postgres ./import-db.sh /var/lib/postgresql

RUN chmod 755 /var/lib/postgresql/import-db.sh

USER postgres
WORKDIR /var/lib/postgresql
