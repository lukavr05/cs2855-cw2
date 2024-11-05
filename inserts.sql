INSERT INTO item (item_id, item_name, item_price, item_manufacturer)
VALUES
    (1, 'Laptop', 299.99, 'Dell'),
    (2, 'Smartphone', 499.99, 'Apple'),
    (3, 'Tablet', 299.99, 'Intel'),
    (4, 'PC', 599.98, 'Dell'),
    (5, 'Headphones', 120.00, 'Dell');

INSERT INTO customer (customer_id, customer_name, customer_address)
VALUES
    (11, 'Alice Smith', '123 Elm St'),
    (12, 'Bob Jones', '456 Maple Ave'),
    (13, 'Carol White', '789 Oak Dr'),
    (14, 'David Brown', '101 Pine Rd'),
    (15, 'Eve Johnson', '202 Cedar Blvd');

INSERT INTO rating (item_id, customer_id, rating_date, rating_stars)
VALUES
    (1, 11, '2023-01-01', 1),
    (2, 12, '2021-10-22', 4),
    (3, 13, '2014-03-13', 3),
    (1, 14, '1950-07-04', 5),
    (1, 11, '2023-03-01', 2), --- customer 1 rates item 11 again
    (1, 11, '2023-02-01', 4), --- customer 1 rates item 11 again
    (2, 15, '1991-11-15', 2);

