INSERT INTO webshop.stock (articleid, count) SELECT id, floor(random() * 10) FROM webshop.articles;