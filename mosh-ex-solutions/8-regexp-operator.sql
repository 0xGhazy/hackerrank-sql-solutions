-- 1)
SELECT * FROM store.customers WHERE first_name REGEXP "ELKA|AMBUR";


-- 2)
SELECT * FROM store.customers WHERE last_name REGEXP "EY|ON$";

--3) 
SELECT * FROM store.customers WHERE last_name REGEXP "^MY|se";

-- 4)
SELECT * FROM store.customers WHERE last_name REGEXP "B[ru]";