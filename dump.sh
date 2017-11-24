#!/bin/sh

set -e
set -o pipefail

# Verify MYSQL_* parameters
if [ "${MYSQL_HOST}" = "**None**" ]; then
  echo "You need to set the MYSQL_HOST environment variable."
  exit 1
fi

if [ "${MYSQL_DATABASE}" = "**None**" ]; then
  echo "You need to set the MYSQL_DATABASE environment variable."
  exit 1
fi

if [ "${MYSQL_USER}" = "**None**" ]; then
  echo "You need to set the MYSQL_USER environment variable."
  exit 1
fi

if [ "${MYSQL_PASSWORD}" = "**None**" ]; then
  echo "You need to set the MYSQL_PASSWORD environment variable."
  exit 1
fi

# Set parameters for dump
MYSQL_HOST_OPTS="-h $MYSQL_HOST -P $MYSQL_PORT -u $MYSQL_USER --password=$MYSQL_PASSWORD"

# Dump the database
echo "Creating dump of database ${MYSQL_DATABASE} from host ${MYSQL_HOST}..."
mysqldump $MYSQL_HOST_OPTS $MYSQL_EXTRA_OPTS ${MYSQL_DATABASE}  > $BACKUP_FILE
