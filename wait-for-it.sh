/bin/sh -c "
apk add --no-cache postgresql-client &&
until pg_isready -h ${POSTGRES_HOST} -U ${POSTGRES_USER} -d ${POSTGRES_DB}; do
  echo 'Waiting for PostgreSQL to be ready...';
  sleep 2;
done;
"
