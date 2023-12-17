# Write your MySQL query statement below

SELECT name, 
       CASE 
           WHEN bonus > 1000 THEN NULL
           ELSE bonus
       END AS bonus
FROM Employee e
LEFT JOIN Bonus b
    ON e.empId = b.empId
WHERE bonus < 1000 OR bonus IS NULL;