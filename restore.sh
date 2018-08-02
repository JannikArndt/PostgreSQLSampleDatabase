#!/usr/bin/env bash

DATABASENAME=${1:-'mywebshop'}

echo "Restoring data to database $DATABASENAME"

createdb $DATABASENAME
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f data/create.sql
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f data/products.sql
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f data/articles.sql
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f data/customer.sql
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f data/order.sql
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f data/order_positions.sql
psql -h localhost -p 5432 -U postgres -d $DATABASENAME -f data/stock.sql