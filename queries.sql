-- Write your queries here. 

--1  

SELECT * 
FROM owners o
LEFT JOIN vehicles v 
ON 
o.id = v.owner_id ;

--2
SELECT o.first_name, o.last_name, COUNT(*)
FROM owners o 
JOIN vehicles v
ON o.id = v.owner_id 
GROUP BY o.id 
ORDER BY COUNT(*)
ASC;

--3
SELECT o.first_name, o.last_name, AVG(v.price), COUNT(*) 
FROM owners o 
JOIN vehicles v 
ON o.id = v.owner_id 
GROUP BY o.id
HAVING AVG(v.price) > 10000 
AND COUNT(*) > 1 
ORDER BY o.first_name DESC ;