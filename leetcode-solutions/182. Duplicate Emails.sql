SELECT email
FROM Person
HAVING COUNT(email) > 1;