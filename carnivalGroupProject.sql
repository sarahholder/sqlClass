SELECT
  CONCAT(e.first_name, ' ', e.last_name) AS employee_name,
  SUM(s.price) AS total_sales
FROM sales s
INNER JOIN employees e
  ON e.employee_id = s.employee_id
GROUP BY e.employee_id
ORDER BY total_sales DESC
LIMIT 5;

