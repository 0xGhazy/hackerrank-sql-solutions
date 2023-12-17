SELECT MAX(salary * months), COUNT(employee_id)
FROM Employee 
WHERE (salary * months) >= (SELECT MAX(salary * months) FROM Employee);