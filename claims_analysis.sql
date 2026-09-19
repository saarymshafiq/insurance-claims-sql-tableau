-- Insurance Claims Analysis
-- Synthetic dataset modeling a mental health practice's billing/insurance claims

-- 1. Denial rate by payer
SELECT payer,
       COUNT(*) AS total_claims,
       SUM(CASE WHEN claim_status = 'Denied' THEN 1 ELSE 0 END) AS denied_claims,
       ROUND(SUM(CASE WHEN claim_status = 'Denied' THEN 1 ELSE 0 END) / (COUNT(*) * 1.0) * 100, 1) AS denial_pct
FROM claims
GROUP BY payer
ORDER BY denial_pct DESC;

-- 2. Average days to payment by payer
SELECT payer,
       ROUND(AVG(days_to_payment), 1) AS avg_days_to_payment
FROM claims
GROUP BY payer
ORDER BY avg_days_to_payment DESC;

-- 3. Top denial reasons
SELECT denial_reason,
       COUNT(*) AS denial_count
FROM claims
WHERE claim_status = 'Denied'
GROUP BY denial_reason
ORDER BY denial_count DESC;
