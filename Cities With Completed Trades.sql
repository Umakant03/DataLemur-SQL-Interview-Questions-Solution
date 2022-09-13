-- Write a query to list the top three cities that have the most completed trade orders in descending order.

SELECT u.city,COUNT(t1.status) total_orders  FROM trades t1
JOIN users u 
ON t1.user_id=u.user_id
where t1.status='Completed'
GROUP BY u.city
ORDER BY COUNT(t1.status) DESC
LIMIT 3