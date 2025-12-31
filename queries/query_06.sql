-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT pz.category,sum(od.quantity) as quantity from pizza_types as pz 
join pizzas p
on pz.pizza_type_id=p.pizza_type_id
join order_details od
on od.pizza_id=p.pizza_id
group by pz.category
order by quantity desc