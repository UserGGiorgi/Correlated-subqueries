SELECT DISTINCT pc.id AS id, pc.name AS name
FROM product_category pc
WHERE pc.id IN (
    SELECT pt.product_category_id
    FROM product_title pt
    INNER JOIN product p ON pt.id = p.product_title_id
    INNER JOIN order_details od ON p.id = od.product_id
)
ORDER BY pc.id ASC;