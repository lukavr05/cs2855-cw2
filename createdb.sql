CREATE TABLE item (
  item_id int primary key,
  item_name varchar(20),
  item_price numeric(12,2),
  item_manufacturer varchar(20)
);

CREATE TABLE customer (
  customer_id int primary key,
  customer_name varchar(20),
  customer_address varchar(20)
);

CREATE TABLE rating (
  item_id int,
  customer_id int,
  rating_date date,
  rating_stars int,
  primary key(item_id, customer_id, rating_date),
  foreign key(item_id) references item,
  foreign key(customer_id) references customer
);
