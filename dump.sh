#!/usr/bin/env bash

pg_dump example --schema=webshop --schema=public \
    --exclude-table=webshop.products \
    --exclude-table=webshop.articles \
    --exclude-table=webshop.labels \
    --exclude-table=webshop.customer \
    --exclude-table=webshop.address \
    --exclude-table=webshop.order \
    --exclude-table=webshop.order_positions \
    --exclude-table=webshop.stock > data/create.sql
pg_dump example --table=webshop.products > data/products.sql
pg_dump example --table=webshop.articles > data/articles.sql
pg_dump example --table=webshop.labels > data/labels.sql
pg_dump example --table=webshop.customer > data/customer.sql
pg_dump example --table=webshop.address > data/address.sql
pg_dump example --table=webshop.order > data/order.sql
pg_dump example --table=webshop.order_positions > data/order_positions.sql
pg_dump example --table=webshop.stock > data/stock.sql
