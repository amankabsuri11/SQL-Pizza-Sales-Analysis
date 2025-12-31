-- List the top 5 most ordered pizza types along with their quantities.

SELECT 
    pz.name, SUM(od.quantity) AS quantity
FROM
    pizza_types pz
        JOIN
    pizzas p ON pz.pizza_type_id = p.pizza_type_id
        JOIN
    order_details od ON od.pizza_id = p.pizza_id
GROUP BY pz.name
ORDER BY quantity DESC
LIMIT 5;