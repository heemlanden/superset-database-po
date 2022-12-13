#!/bin/sh
sh docker-entrypoint.sh
for file in /var/lib/postgresql/movie/*.sql; do psql -h localhost -U superset -f $file; done