SELECT 
  COALESCE(a.user_id, dp.user_id) AS user_id,
  CASE 
    WHEN dp.paid IS NULL THEN 'CHURN'
    WHEN a.status = 'CHURN' AND dp.paid IS NOT NULL THEN 'RESURRECT'
    WHEN a.status IS NULL AND dp.paid IS NOT NULL THEN 'NEW'
    ELSE 'EXISTING'
  END AS new_status
FROM advertiser a
FULL OUTER JOIN daily_pay dp 
  ON a.user_id = dp.user_id
ORDER BY user_id;
