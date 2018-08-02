CREATE TEMP TABLE names (
  name TEXT
);

INSERT INTO names
VALUES ('Feivel'), ('Buck'), ('Donner'), ('Durrant'), ('Eiko'), ('Beppo'), ('Gorre'), ('Alvaro'), ('Cucio'), ('Obin'),
  ('Hexana'), ('Dunja'), ('Ankana'), ('Elfy'), ('Iola'), ('Yoko'), ('Yesika'), ('Madame'), ('Marisa'), ('Anita'),
  ('Yambi'), ('Yla'), ('Ena'), ('Enne'), ('Herka'), ('Adria'), ('Ayleen'), ('Eddil'), ('Heifi'), ('Nady'), ('Fabian'),
  ('Flavko'), ('Nenno'), ('Dian'), ('Dreff'), ('Muneca'), ('Atlan'), ('Bast'), ('Gabor'), ('Hagar'), ('Dini'),
  ('Nanuc'), ('Chrisie'), ('Nadia'), ('Fluse'), ('Panka'), ('Camen'), ('Lolo'), ('Binda'), ('Bienchen'), ('Amin'),
  ('Arano'), ('Escudo'), ('Dexel'), ('Astrix'), ('Trick'), ('Herry'), ('Drenk'), ('Boogy'), ('Nanzo'), ('Eljin'),
  ('Broker'), ('Cylias'), ('Pepper'), ('Kiff'), ('Lumo'), ('Isto'), ('Andiamo'), ('Corsar'), ('Cimbo'), ('Floni'),
  ('Askania'), ('Aikita'), ('Arnhild'), ('Betzy'), ('Tura'), ('Jeana'), ('Laidy'), ('Guni'), ('Fabulous');

DROP TABLE categories;
CREATE TEMP TABLE categories(
  category category,
  product_type TEXT
);

INSERT INTO categories
    VALUES
      ('Apparel', 'T-Shirt'),
      ('Apparel', 'Blazer'),
      ('Apparel', 'Button-Down Shirt'),
      ('Apparel', 'Coat'),
      ('Apparel', 'Jacket'),
      ('Apparel', 'Dress Shirt'),
      ('Apparel', 'Hoodie'),
      ('Apparel', 'Sweatshirt'),
      ('Apparel', 'Jeans'),
      ('Apparel', 'Pajamas'),
      ('Apparel', 'Sleepwear'),
      ('Apparel', 'Pants'),
      ('Apparel', 'Polo'),
      ('Apparel', 'Shorts'),
      ('Apparel', 'Suit'),
      ('Apparel', 'Sweater'),
      ('Apparel', 'Swimwear'),
      ('Apparel', 'Boxer'),
      ('Apparel', 'Undershirt'),
      ('Apparel', 'Socks'),
      ('Apparel', 'Bra'),
      ('Apparel', 'Panty'),
      ('Apparel', 'Lingerie'),
      ('Apparel', 'Dress'),
      ('Apparel', 'Jumpsuit'),
      ('Apparel', 'Capris'),
      ('Apparel', 'Shorts'),
      ('Apparel', 'Skirt'),
      ('Apparel', 'Suit'),
      ('Apparel', 'Top'),
      ('Footwear', 'Athletic Shoes'),
      ('Footwear', 'Boots'),
      ('Footwear', 'Casual Shoes'),
      ('Footwear', 'Dress Shoes'),
      ('Footwear', 'Sandals'),
      ('Footwear', 'Flip-Flops'),
      ('Footwear', 'Sneakers'),
      ('Footwear', 'Booties'),
      ('Footwear', 'Comfort Shoes'),
      ('Footwear', 'Espadrilles'),
      ('Footwear', 'Flats'),
      ('Footwear', 'Heels'),
      ('Footwear', 'Pumps'),
      ('Footwear', 'Slippers'),
      ('Footwear', 'Wedges'),
      ('Footwear', 'Winter & Rain Boots'),
      ('Sportswear', 'Tracksuit'),
      ('Sportswear', 'Pants'),
      ('Sportswear', 'Jacket'),
      ('Sportswear', 'Underwear'),
      ('Sportswear', 'Hoodie'),
      ('Sportswear', 'Shirt'),
      ('Traditional', 'Costume'),
      ('Formal Wear', 'Suit'),
      ('Formal Wear', 'Dress'),
      ('Formal Wear', 'Tuxedo'),
      ('Accessories', 'Belt'),
      ('Accessories', 'Sunglasses'),
      ('Accessories', 'Scarf'),
      ('Accessories', 'Wrap'),
      ('Accessories', 'Wallet'),
      ('Watches & Jewelry', 'Watch'),
      ('Watches & Jewelry', 'Ring'),
      ('Watches & Jewelry', 'Necklace'),
      ('Watches & Jewelry', 'Bracelet'),
      ('Watches & Jewelry', 'Earring'),
      ('Watches & Jewelry', 'Cuffs'),
      ('Watches & Jewelry', 'Tie Clip'),
      ('Luggage', 'Backpack'),
      ('Luggage', 'Gym Bag'),
      ('Luggage', 'Laptop Bag'),
      ('Luggage', 'Carry-On'),
      ('Luggage', 'Suitcase'),
      ('Luggage', 'Garments Bag'),
      ('Cosmetics', 'Eye Makeup'),
      ('Cosmetics', 'Lipbalm'),
      ('Cosmetics', 'Nailpolish'),
      ('Cosmetics', 'Shampoo'),
      ('Cosmetics', 'Hair Gel')
;

DO
$$
DECLARE
i record;
BEGIN
FOR i in 1..1000 LOOP


WITH label AS (SELECT id FROM webshop.labels ORDER BY random() LIMIT 1),
    color AS (SELECT id FROM webshop.colors ORDER BY random() LIMIT (random() * 10 / 2) + 1),
    category_and_type AS (SELECT * FROM categories ORDER BY random() LIMIT 1),
    product_name AS (SELECT name FROM names ORDER BY random() LIMIT 1),
    fancy_name AS (SELECT product_type || ' ' || name AS name FROM category_and_type, product_name),
    gender AS (SELECT unnest :: gender as gender_name FROM (SELECT unnest(enum_range(NULL::gender))) as all_genders ORDER BY random() LIMIT 1),
    prices AS (SELECT
            (random() > 0.5)                                       as reduction,
            least(ceil(random() * 100 / 2) :: integer, 40)         as percentage,
            ceil(random() * (150 - 50 + 1) + 50) :: text :: money  as price),
    sizes AS (SELECT id FROM webshop.sizes, gender WHERE webshop.sizes.gender = gender.gender_name),
    product_insert as (INSERT INTO webshop.products (name, labelid, category, gender, currentlyactive)
                      (SELECT name, id, category, gender_name, true FROM fancy_name, label, category_and_type, gender)
                      RETURNING webshop.products.id as new_product_id)

INSERT INTO webshop.articles (productid, ean, colorid, size, description, originalprice, reducedprice,
                              taxrate, discountinpercent, currentlyactive)
  (SELECT
     new_product_id,
     ceil(random() * 10 ^ 8) as ean,
     color.id,
     sizes.id,
     'The stylish ' || fancy_name.name || 'is just what you need right now!',
     prices.price,
     CASE WHEN prices.reduction
       THEN (prices.price * (1 - (prices.percentage :: DOUBLE PRECISION / 100)))
     ELSE null END,
     19.0 as taxrate,
     CASE WHEN prices.reduction
       THEN prices.percentage
     ELSE null END,
     true
   FROM product_insert, color, label, sizes, prices, fancy_name);

END LOOP;
END;
$$;


