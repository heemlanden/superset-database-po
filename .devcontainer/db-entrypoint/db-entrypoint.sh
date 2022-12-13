#!/bin/sh
export PGPASSWORD=superset
for file in /var/lib/postgresql/movie/*.sql; do psql -h db -U superset -f $file; done