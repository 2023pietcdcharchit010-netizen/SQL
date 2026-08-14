/* Write your T-SQL query statement below */
SELECT P.Product_name , sum(unit) as unit
FROM Products AS P
INNER JOIN Orders AS O
    ON P.Product_id = O.Product_id
WHERE MONTH(O.order_date) = 2
  AND YEAR(O.order_date) = 2020
GROUP BY P.Product_name
HAVING SUM(O.unit) >= 100;