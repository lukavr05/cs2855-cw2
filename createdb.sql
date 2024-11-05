DROP TABLE IF EXISTS rating;
DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS item;

CREATE TABLE item (
  item_id int primary key,
  item_name varchar(20) not null,
  item_price numeric(12,2) not null,
  item_manufacturer varchar(20) not null
);

CREATE TABLE customer (
  customer_id int primary key,
  customer_name varchar(20) not null,
  customer_address varchar(20) not null
);

CREATE TABLE rating (
  item_id int not null,
  customer_id int not null,
  rating_date date not null,
  rating_stars int,
  primary key(item_id, customer_id, rating_date),
  foreign key(item_id) references item(item_id),
  foreign key(customer_id) references customer(item_id),
  check (rating_stars >= 1 and rating_stars <= 5)
);

CREATE TABLE invoice (
  invoice_id int primary key,
  item_id int,
  customer_id int,
  item_quantity int,
  total_cost numeric(12,2),
  foreign key(item_id) references item(item_id),
  foreign key(customer_id) references customer(customer_id),
  check (item_quantity > 0 and total_cost >= 0.00)
);
