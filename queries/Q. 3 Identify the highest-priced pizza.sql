-- Identify the highest-priced pizza.

SELECT 
    pt.name, pi.price
FROM
    pizza_types pt
        JOIN
    pizzas pi ON pi.pizza_type_id = pt.pizza_type_id
ORDER BY pi.price DESC
LIMIT 1;