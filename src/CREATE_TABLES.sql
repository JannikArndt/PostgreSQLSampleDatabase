CREATE DATABASE example;

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

CREATE TABLE webshop.sizes (
  id       SERIAL PRIMARY KEY,
  gender   gender,
  category category,
  size     TEXT,
  size_US  int4range,
  size_UK  int4range,
  size_EU  int4range
);



CREATE TABLE webshop.labels (
  id       SERIAL PRIMARY KEY,
  name     TEXT,
  slugName TEXT,
  icon     bytea
);

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

CREATE TABLE webshop.stock (
  id        SERIAL PRIMARY KEY,
  articleId INTEGER REFERENCES webshop.articles,
  count     INTEGER,
  created   TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated   TIMESTAMP WITH TIME ZONE
);

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