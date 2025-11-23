-- CLIENT RETENTION MODEL - SQL SCRIPT
-- Author: Sylvia Brennan

-- 1️⃣ Import and inspect raw data
SELECT * FROM clients LIMIT 10;

-- 2️⃣ Clean missing or invalid values
UPDATE clients
SET satisfaction_score = 3
WHERE satisfaction_score IS NULL;

-- 3️⃣ Calculate churn flag
ALTER TABLE clients ADD COLUMN churn_flag BOOLEAN;
UPDATE clients
SET churn_flag = CASE WHEN DATEDIFF(CURDATE(), last_purchase_date) > 90 THEN TRUE ELSE FALSE END;

-- 4️⃣ Calculate engagement metrics
SELECT client_id,
       COUNT(support_tickets) AS total_support,
       AVG(satisfaction_score) AS avg_satisfaction,
       MAX(last_purchase_date) AS recent_purchase
FROM interactions
GROUP BY client_id;

-- 5️⃣ Segment clients by churn risk
SELECT client_id,
       CASE
         WHEN churn_flag = TRUE AND avg_satisfaction < 3 THEN 'High Risk'
         WHEN churn_flag = FALSE AND avg_satisfaction BETWEEN 3 AND 4 THEN 'Medium Risk'
         ELSE 'Low Risk'
       END AS risk_segment
FROM clients_summary;

-- 6️⃣ Final table for dashboard
CREATE VIEW churn_analysis AS
SELECT c.client_id,
       c.region,
       c.tenure_months,
       s.avg_satisfaction,
       s.total_support,
       s.risk_segment,
       c.churn_flag
FROM clients c
JOIN summary s ON c.client_id = s.client_id;
