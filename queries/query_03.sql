-- Identify the highest-priced pizza.

SELECT 
    pz.name, p.price
FROM
    pizzas p
        JOIN
    pizza_types pz ON p.pizza_id = p.pizza_id
ORDER BY price DESC
LIMIT 1;


