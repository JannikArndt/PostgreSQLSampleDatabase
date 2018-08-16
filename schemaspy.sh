#!/usr/bin/env bash

DATABASENAME=${1:-'mywebshop'}

echo "Running schemaspy for database $DATABASENAME"

RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

function checkForPostgresDriver {
    if [ ! -f ./postgresql.jar ]; then
        echo "${BLUE}Missing postgresql.jar, downloading…${NC}\n"
        curl -o postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.2.3.jar
    fi
}

function checkForSchemaSpy {
    if [ ! -f ./schemaspy-6.0.0-rc2.jar ]; then
        echo "${BLUE}Missing schemaspy.jar, downloading…${NC}\n"
        curl -L -o schemaspy-6.0.0-rc2.jar https://github.com/schemaspy/schemaspy/releases/download/v6.0.0-rc2/schemaspy-6.0.0-rc2.jar
    fi
}

function runSchemaSpy {
    LC_CTYPE="en_US.UTF-8"

    java -jar schemaspy-6.0.0-rc2.jar \
        -t pgsql \
        -dp postgresql.jar \
        -gv /usr/local/ \
        -renderer :cairo \
        -db $DATABASENAME \
        -host localhost:5432 \
        -u postgres \
        -s webshop \
        -o schema
}

checkForPostgresDriver
checkForSchemaSpy
runSchemaSpy

# If you get output like
# .org.schemaspy.util.Dot$DotFailure: '/usr/local/bin/dot -Tpng:gd schema/diagrams/order.1degree.dot -oschema/diagrams/order.1degree.png -Tcmapx' failed with return code 139
# you might have installed GraphViz WITHOUT pango.
# Try brew reinstall graphviz --with-librsvg --with-pango