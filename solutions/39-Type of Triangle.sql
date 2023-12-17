SELECT CASE
    WHEN (a+b)<=c OR (a+c)<=b OR (b+c)<=a THEN 'Not A Triangle'
    WHEN a=b AND b=c AND a=c THEN 'Equilateral'
    WHEN (a=b AND a!=c) OR (b=c AND b!=a) OR (a=c AND a!=b) THEN 'Isosceles'
    ELSE 'Scalene'
    END
FROM Triangles; 