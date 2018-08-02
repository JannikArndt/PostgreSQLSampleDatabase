CREATE DATABASE example;

CREATE SCHEMA webshop;

SELECT * FROM pg_enum;
DELETE FROM pg_enum en WHERE en.enumtypid=16874 AND en.enumlabel='Textiles';
CREATE TYPE category AS ENUM (
  'Apparel',
  'Footwear',
  'Sportswear',
  'Traditional',
  'Formal Wear',
  'Accessories',
  'Watches & Jewelry',
  'Luggage',
  'Cosmetics'
);

CREATE TYPE gender AS ENUM (
  'male',
  'female',
  'unisex'
);

CREATE TABLE webshop.colors (
  id   SERIAL PRIMARY KEY,
  name TEXT,
  rgb  TEXT
);

DROP TABLE webshop.sizes CASCADE;
CREATE TABLE webshop.sizes (
  id       SERIAL PRIMARY KEY,
  gender   gender,
  category category,
  size     TEXT,
  size_US  int4range,
  size_UK  int4range,
  size_EU  int4range
);


INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('female', 'Apparel', 'XS', '[2,4)', '[4,6)', '[32,36)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('female', 'Apparel', 'S', '[4,6)', '[6,10)', '[36,40)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('female', 'Apparel', 'M', '[6,8)', '[10,14)', '[40,44)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('female', 'Apparel', 'L', '[8,10)', '[14,18)', '[44,46)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('female', 'Apparel', 'XL', '[10,12)', '[18,22)', '[46,50)');

INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('male', 'Apparel', 'XS', '[30,32)', '[30,32)', '[40,42)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('male', 'Apparel', 'S', '[32,36)', '[32,36)', '[42,48)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('male', 'Apparel', 'M', '[36,40)', '[36,40)', '[48,50)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('male', 'Apparel', 'L', '[40,44)', '[40,44)', '[50,54)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('male', 'Apparel', 'XL', '[44,50)', '[44,50)', '[54,58)');

INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('unisex', 'Footwear', 'XS', '[6,7)', '[5,6)', '[38,40)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('unisex', 'Footwear', 'S', '[7,8)', '[6,7)', '[40,42)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('unisex', 'Footwear', 'M', '[7,9)', '[7,8)', '[42,43)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('unisex', 'Footwear', 'L', '[9,10)', '[8,9)', '[43,44)');
INSERT INTO webshop.sizes (gender, category, size, size_us, size_uk, size_eu)
VALUES ('unisex', 'Footwear', 'XL', '[10,11)', '[9,10)', '[44,45)');

CREATE TABLE webshop.labels (
  id       SERIAL PRIMARY KEY,
  name     TEXT,
  slugName TEXT,
  icon     bytea
);

DROP TABLE webshop.products CASCADE;
CREATE TABLE webshop.products
(
  id              SERIAL PRIMARY KEY,
  name            TEXT,
  labelId         INTEGER REFERENCES webshop.labels,
  category        category,
  gender          gender,
  currentlyActive BOOLEAN,
  created         TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated         TIMESTAMP WITH TIME ZONE
);

INSERT INTO webshop.products (id, name, labelid, category, gender, currentlyactive)
VALUES
  (1, 'Jeans Mountain View Acres Style', 928, 'Apparel', 'male', true),
  (2, 'Jeans Palmer Lake Style', 928, 'Apparel', 'male', true),
  (3, 'Jeans Clayhatchee Style', 928, 'Apparel', 'male', true),
  (4, 'Jeans Kelliher Style', 928, 'Apparel', 'male', true),
  (5, 'Jeans Keokuk Style', 928, 'Apparel', 'male', true),
  (6, 'Jeans Herrick Style', 928, 'Apparel', 'male', true),
  (7, 'Jeans Kerhonkson Style', 928, 'Apparel', 'male', true),
  (8, 'Jeans Taopi Style', 928, 'Apparel', 'male', true),
  (9, 'Jeans Roan Mountain Style', 928, 'Apparel', 'male', true),
  (10, 'Jeans Golden Valley Style', 928, 'Apparel', 'male', true);

CREATE TABLE webshop.articles
(
  id                SERIAL PRIMARY KEY,
  productId         INTEGER REFERENCES webshop.products,
  ean               TEXT,
  colorId           INTEGER REFERENCES webshop.colors,
  size              INTEGER REFERENCES webshop.sizes,
  description       TEXT,
  originalPrice     money,
  reducedPrice      money,
  taxRate           DECIMAL,
  discountInPercent INTEGER,
  currentlyActive   BOOLEAN,
  created           TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated           TIMESTAMP WITH TIME ZONE
);

INSERT INTO webshop.articles (productid, ean, colorid, size, description, originalprice, reducedprice, taxrate, discountinpercent, currentlyactive)
VALUES
  (1, '23049834290', 85, 6, 'Cool blue Jeans', '$89.00', '$79.00', 19, 11, true),
  (1, '23049834293', 85, 7, 'Cool blue Jeans', '$89.00', '$79.00', 19, 11, true),
  (1, '23049834296', 85, 8, 'Cool blue Jeans', '$89.00', '$79.00', 19, 11, true),
  (1, '23049834298', 85, 9, 'Cool blue Jeans', '$89.00', '$79.00', 19, 11, true),
  (1, '23049834311', 85, 10, 'Cool blue Jeans', '$89.00', '$79.00', 19, 11, true);

CREATE TABLE webshop.stock (
  id        SERIAL PRIMARY KEY,
  articleId INTEGER REFERENCES webshop.articles,
  count     INTEGER,
  created   TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated   TIMESTAMP WITH TIME ZONE
);

DROP TABLE webshop.customer CASCADE ;
CREATE TABLE webshop.customer (
  id               SERIAL PRIMARY KEY,
  firstName        TEXT,
  lastName         TEXT,
  gender           gender,
  email            TEXT,
  dateOfBirth      DATE,
  currentAddressId INTEGER,
  created          TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated          TIMESTAMP WITH TIME ZONE
);

CREATE TABLE webshop.address (
  id         SERIAL PRIMARY KEY,
  customerId INTEGER REFERENCES webshop.customer,
  firstName  TEXT,
  lastName   TEXT,
  address1   TEXT,
  address2   TEXT,
  city       TEXT,
  zip        TEXT,
  created    TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated    TIMESTAMP WITH TIME ZONE
);

ALTER TABLE webshop.customer
  ADD CONSTRAINT fk_customer_to_current_address FOREIGN KEY
  (currentAddressId) REFERENCES webshop.address;

CREATE TABLE webshop.order (
  id                SERIAL PRIMARY KEY,
  customer          INTEGER REFERENCES webshop.customer,
  orderTimestamp    TIMESTAMP WITH TIME ZONE DEFAULT now(),
  shippingAddressId INTEGER REFERENCES webshop.address,
  total             money,
  shippingCost      money,
  created           TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated           TIMESTAMP WITH TIME ZONE
);

CREATE TABLE webshop.order_positions (
  id        SERIAL PRIMARY KEY,
  orderId   INTEGER REFERENCES webshop.order,
  articleId INTEGER REFERENCES webshop.articles,
  amount    SMALLINT,
  price     money,
  created   TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated   TIMESTAMP WITH TIME ZONE
)