SELECT DISTINCT item_name FROM item, rating WHERE
  rating.item_id = item.item_id and
  rating_stars >= 3;
