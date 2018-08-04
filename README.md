# PostgreSQL Sample Database

This is a sample webshop, including 

* 1000 customers
* 2000 orders
* 1000 products with 17730 different articles

You can either create the database yourself with the scripts in `src` or restore the dump in `data` via

```bash
$ ./restore.sh myDatabaseName
```

(using the defaults `localhost:5432` and user `postgres`)

## Schema

Created with schemaspy:

![](schema/diagrams/summary/relationships.real.large.png)