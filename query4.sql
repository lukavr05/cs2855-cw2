SELECT 
    c.customer_name,
    i.item_name,
    MAX(r.rating_stars) AS highest_star_rating
FROM 
    rating r
JOIN 
    customer c ON r.customer_id = c.customer_id
JOIN 
    item i ON r.item_id = i.item_id
WHERE 
    (r.item_id, r.customer_id) IN (
        SELECT 
            r1.item_id, 
            r1.customer_id
        FROM 
            rating r1
        GROUP BY 
            r1.item_id, r1.customer_id
        HAVING 
            COUNT(*) > 1
    )
GROUP BY 
    c.customer_name, i.item_name

