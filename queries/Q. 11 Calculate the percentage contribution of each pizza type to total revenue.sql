-- Calculate the percentage contribution of each pizza type to total revenue.

SELECT 
    pt.category,
    round((SUM(od.quantity * pi.price) / (SELECT 
            SUM(od.quantity * pi.price)
        FROM
            pizzas pi
                JOIN
            order_details od ON pi.pizza_id = od.pizza_id)) * 100, 2) AS percentage_revenue
FROM
    pizza_types pt
        JOIN
    pizzas pi ON pi.pizza_type_id = pt.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = pi.pizza_id
GROUP BY pt.category
ORDER BY percentage_revenue DESC;