# Write your MySQL query statement below
SELECT a.contest_id,
       ROUND(COUNT(DISTINCT a.user_id) * 100 / (SELECT COUNT(DISTINCT user_id) FROM Users), 2) AS percentage
FROM Register as a
GROUP BY a.contest_id
ORDER BY percentage DESC, a.contest_id ASC;