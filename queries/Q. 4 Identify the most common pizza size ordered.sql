-- Identify the most common pizza size ordered.

SELECT 
    pi.size, COUNT(od.order_details_id) total_orders
FROM
    pizzas pi
        JOIN
    order_details od ON pi.pizza_id = od.pizza_id
GROUP BY pi.size
ORDER BY total_orders DESC;