#!/bin/bash
set -e


# Step 1: Execute schema.sql to create tables
psql -v ON_ERROR_STOP=1 --username "petclinic" --dbname "PostgresDB" -f /docker-entrypoint-initdb.d/schema.sql

# Step 2: Add ON CONFLICT DO NOTHING to all INSERT statements

#awk '
#/^INSERT INTO/ {
#    if ($0 ~ /VALUES/ && $0 !~ /ON CONFLICT/) {
#        sub(/;$/, " ON CONFLICT (username) DO NOTHING;");
#    }
##}



awk -F, '
{
    username = $2
    if (!seen[username]++) {
        print $0
    }
}


 
' /docker-entrypoint-initdb.d/data.sql > /tmp/data_safe.sql

 
# Step 4: Execute the modified data.sql
psql -v ON_ERROR_STOP=1 --username "petclinic" --dbname "PostgresDB" -f /tmp/data_safe.sql


