-- Join the necessary tables to find the total quantity of each pizza category ordered.
SELECT 
    pt.category, SUM(od.quantity) AS quantity
FROM
    pizza_types pt
        JOIN
    pizzas pi ON pt.pizza_type_id = pi.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = pi.pizza_id
GROUP BY pt.category
ORDER BY quantity DESC;