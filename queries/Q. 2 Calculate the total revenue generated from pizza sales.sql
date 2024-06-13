-- Calculate the total revenue generated from pizza sales.

select * from order_details;
select * from pizzas;

SELECT 
    ROUND(SUM(od.quantity * pi.price), 2) AS total_revenue
FROM
    order_details od
        JOIN
    pizzas pi ON pi.pizza_id = od.pizza_id;