-- Determine the top 3 most ordered pizza types based on revenue.

SELECT 
    pt.name, SUM(od.quantity * pi.price) AS revenue
FROM
    pizza_types pt
        JOIN
    pizzas pi ON pi.pizza_type_id = pt.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = pi.pizza_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 3; 