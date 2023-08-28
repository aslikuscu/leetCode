# Write your MySQL query statement below
SELECT a.name
FROM Employee as a
JOIN Employee as b
WHERE a.id = b.managerId
GROUP BY b.managerId
HAVING COUNT(*) >= 5