SELECT item_name, max(rating_date), round(avg(rating_stars), 2) as average_rating FROM item , rating
ORDER BY average_rating DESC;
