-- https://www.codewars.com/kata/5816a3ecf54413a113000074
SELECT 
  EXTRACT('month'from payment_date) as month,
  COUNT(1) as total_count,
  SUM(amount) as total_amount,
  
  COUNT(1) filter (where staff_id = 1) as mike_count,
  SUM(amount) filter (where staff_id = 1) as mike_amount,
  
  COUNT(1) filter (where staff_id = 2) as jon_count ,
  SUM(amount) filter (where staff_id = 2) as jon_amount
FROM payment
GROUP BY EXTRACT('month'from payment_date)
ORDER BY EXTRACT('month'from payment_date)