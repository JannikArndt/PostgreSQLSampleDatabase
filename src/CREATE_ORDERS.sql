DO
$$
DECLARE
i record;
BEGIN
FOR i in 1..2000 LOOP

WITH
    customer AS (SELECT * FROM webshop.customer ORDER BY random() LIMIT 1),
    article AS (SELECT reducedprice, originalprice, articles.id FROM customer, webshop.articles JOIN webshop.products ON articles.productid = products.id WHERE
    products.gender = customer.gender ORDER BY random() LIMIT (floor(random() * 10 / 2) + 1)),
    order_ts AS (SELECT NOW() - random() * ('2 YEARS' :: interval) as ts),
    sum AS (SELECT sum(coalesce(article.reducedprice, article.originalprice)) as total FROM article),
    order_insert AS (INSERT INTO webshop.order (customer, ordertimestamp, shippingaddressid, total, shippingcost)
                     SELECT customer.id, order_ts.ts, customer.currentaddressid, sum.total, 3.9
                     FROM customer, order_ts, sum RETURNING webshop.order.id as new_order_id)

  INSERT INTO webshop.order_positions (orderid, articleid, amount, price)
  SELECT
    new_order_id,
    article.id,
    1                                     as amount,
    coalesce(reducedprice, originalprice) as paid_price
  FROM article, order_insert;

END LOOP;
END;
$$