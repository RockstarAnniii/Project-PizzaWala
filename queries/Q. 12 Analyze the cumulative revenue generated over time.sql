-- Analyze the cumulative revenue generated over time.

select 
	order_date,
	sum(revenue) over (order by order_date) as cumulative_revenue
		from
			(select o.order_date, sum(od.quantity * pi.price) as revenue
				from order_details od
					join
				pizzas pi
					on
				od.pizza_id = pi.pizza_id
					join
				orders o 
					on o.order_id = od.order_id
				group by o.order_date) as sales;