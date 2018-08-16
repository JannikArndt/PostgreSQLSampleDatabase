CREATE DATABASE mywebshop;

CREATE SCHEMA webshop;

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

COMMENT ON TYPE category IS 'Category of clothing';

CREATE TYPE gender AS ENUM (
  'male',
  'female',
  'unisex'
);

COMMENT ON TYPE gender IS 'Gender of customer or clothes';

CREATE TABLE webshop.colors (
  id   SERIAL PRIMARY KEY,
  name TEXT,
  rgb  TEXT
);

COMMENT ON TABLE webshop.colors IS 'Colors with name and rgb value';

CREATE TABLE webshop.sizes (
  id       SERIAL PRIMARY KEY,
  gender   gender,
  category category,
  size     TEXT,
  size_US  int4range,
  size_UK  int4range,
  size_EU  int4range
);

COMMENT ON TABLE webshop.sizes IS 'Sizes for US, UK and EU';

CREATE TABLE webshop.labels (
  id       SERIAL PRIMARY KEY,
  name     TEXT,
  slugName TEXT,
  icon     bytea
);

COMMENT ON TABLE webshop.labels IS 'Brands / labels';

CREATE TABLE webshop.products
(
  id              SERIAL PRIMARY KEY,
  name            TEXT,
  labelId         INTEGER REFERENCES webshop.labels (id),
  category        category,
  gender          gender,
  currentlyActive BOOLEAN,
  created         TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated         TIMESTAMP WITH TIME ZONE
);

COMMENT ON TABLE webshop.products IS 'Groups articles (differing in sizes/color)';

CREATE TABLE webshop.articles
(
  id                SERIAL PRIMARY KEY,
  productId         INTEGER REFERENCES webshop.products (id),
  ean               TEXT,
  colorId           INTEGER REFERENCES webshop.colors (id),
  sizeId            INTEGER REFERENCES webshop.sizes (id),
  description       TEXT,
  originalPrice     money,
  reducedPrice      money,
  taxRate           DECIMAL,
  discountInPercent INTEGER,
  currentlyActive   BOOLEAN,
  created           TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated           TIMESTAMP WITH TIME ZONE
);

COMMENT ON TABLE webshop.articles IS 'Instance of a product with a size, color and price';

CREATE TABLE webshop.stock (
  id        SERIAL PRIMARY KEY,
  articleId INTEGER REFERENCES webshop.articles (id),
  count     INTEGER,
  created   TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated   TIMESTAMP WITH TIME ZONE
);

COMMENT ON TABLE webshop.stock IS 'Amount of articles on stock';

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

COMMENT ON TABLE webshop.customer IS 'Basic customer data';

CREATE TABLE webshop.address (
  id         SERIAL PRIMARY KEY,
  customerId INTEGER REFERENCES webshop.customer (id),
  firstName  TEXT,
  lastName   TEXT,
  address1   TEXT,
  address2   TEXT,
  city       TEXT,
  zip        TEXT,
  created    TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated    TIMESTAMP WITH TIME ZONE
);

COMMENT ON TABLE webshop.address IS 'Addresses for receipts and shipping';

ALTER TABLE webshop.customer
  ADD CONSTRAINT fk_customer_to_current_address FOREIGN KEY
  (currentAddressId) REFERENCES webshop.address (id);

CREATE TABLE webshop.order (
  id                SERIAL PRIMARY KEY,
  customerId        INTEGER REFERENCES webshop.customer (id),
  orderTimestamp    TIMESTAMP WITH TIME ZONE DEFAULT now(),
  shippingAddressId INTEGER REFERENCES webshop.address (id),
  total             money,
  shippingCost      money,
  created           TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated           TIMESTAMP WITH TIME ZONE
);

COMMENT ON TABLE webshop.order IS 'Metadata for an order, see order_positions as well';

CREATE TABLE webshop.order_positions (
  id        SERIAL PRIMARY KEY,
  orderId   INTEGER REFERENCES webshop.order (id),
  articleId INTEGER REFERENCES webshop.articles (id),
  amount    SMALLINT,
  price     money,
  created   TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated   TIMESTAMP WITH TIME ZONE
);

COMMENT ON TABLE webshop.order_positions IS 'Articles that are contained in an order';
