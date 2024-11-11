SELECT item_name, max(rating_date), round(avg(rating_stars) as average_rating, 2) FROM item , rating_date
ORDER BY average_rating DESC;
