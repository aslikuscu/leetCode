# Write your MySQL query statement below
SELECT 
  a.user_id, 
  ROUND(
    COALESCE(
      SUM(
        CASE WHEN ACTION = 'confirmed' THEN 1 END
      ) / COUNT(*), 0),2) 
  AS confirmation_rate 
FROM Signups as a 
LEFT JOIN Confirmations as b 
ON a.user_id = b.user_id 
GROUP BY a.user_id;  