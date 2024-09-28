Select c.id as id ,c.name as name
From city c
where  c.id not in(select s.city_id from street s)
ORDER BY c.name ASC;