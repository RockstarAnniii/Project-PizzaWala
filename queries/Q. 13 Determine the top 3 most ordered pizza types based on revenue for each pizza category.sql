-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

with cte as 
	(select
		rank() over(partition by pt.category order by sum(od.quantity * pi.price) desc) as rn,
        pt.category, pt.name, sum(od.quantity * pi.price) as revenue
			from
		pizza_types pt
			join
		pizzas pi
			on
		pi.pizza_type_id = pt.pizza_type_id
			join
		order_details od
			on
            od.pizza_id = pi.pizza_id
			group by pt.category, pt.name)
	select * from cte where rn <= 3;