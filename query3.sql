SELECT (SELECT item_name FROM item WHERE item.item_id = r.item_id) as item_name,
    max(r.rating_date) as most_recent_rating,
    round(avg(r.rating_stars), 2) as average_rating
FROM rating r
GROUP BY r.item_id
ORDER BY  average_rating DESC;
