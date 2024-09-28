
SELECT p.id AS id, p.comment AS title, p.price AS price
FROM product p
INNER JOIN product_title pt ON p.product_title_id = pt.id
WHERE p.price > (
    SELECT AVG(p2.price)
    FROM product p2
    INNER JOIN product_title pt2 ON p2.product_title_id = pt2.id
    WHERE pt2.product_category_id = pt.product_category_id
)
ORDER BY p.id ASC;
