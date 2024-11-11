SELECT (SELECT item_name FROM item WHERE item.item_id = rating.item_id) AS item_name, max(rating_date), round(avg(rating_stars), 2) as average_rating FROM item , rating
WHERE rating.item_id = item.item_id
ORDER BY average_rating DESC;
