#!/bin/sh

echo "Waiting for postgres..."

while ! nc -z $POSTGRESQL_HOST $POSTGRESQL_PORT; do
  sleep 0.1
done

echo "PostgreSQL started"

#if [ "$FLASK_ENV" = "development" ]
#then
#    echo "Creating the database tables..."
#    python manage.py create_db
#    echo "Tables created"
#fi

exec "$@"