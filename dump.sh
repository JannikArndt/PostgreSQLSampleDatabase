#!/usr/bin/env bash

DATABASENAME=${1:-'mywebshop'}

echo "Dumping data from database $DATABASENAME to folder data/"

pg_dump $DATABASENAME --schema=webshop --schema=public \
    --exclude-table=webshop.products \
    --exclude-table=webshop.articles \
    --exclude-table=webshop.labels \
    --exclude-table=webshop.customer \
    --exclude-table=webshop.address \
    --exclude-table=webshop.order \
    --exclude-table=webshop.order_positions \
    --exclude-table=webshop.stock > data/create.sql
pg_dump $DATABASENAME --table=webshop.products > data/products.sql
pg_dump $DATABASENAME --table=webshop.articles > data/articles.sql
pg_dump $DATABASENAME --table=webshop.labels > data/labels.sql
pg_dump $DATABASENAME --table=webshop.customer > data/customer.sql
pg_dump $DATABASENAME --table=webshop.address > data/address.sql
pg_dump $DATABASENAME --table=webshop.order > data/order.sql
pg_dump $DATABASENAME --table=webshop.order_positions > data/order_positions.sql
pg_dump $DATABASENAME --table=webshop.stock > data/stock.sql
