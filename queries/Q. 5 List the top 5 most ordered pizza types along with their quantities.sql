-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pt.name, SUM(od.quantity) quantity
FROM
    pizza_types pt
        JOIN
    pizzas pi ON pi.pizza_type_id = pt.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = pi.pizza_id
GROUP BY pt.name
ORDER BY quantity DESC
LIMIT 5;