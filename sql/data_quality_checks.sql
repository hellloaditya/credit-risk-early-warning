
SELECT COUNT(*) AS total_rows
FROM credit_risk;


SELECT
    SUM(CASE WHEN MonthlyIncome IS NULL THEN 1 ELSE 0 END) AS missing_income,
    SUM(CASE WHEN NumberOfDependents IS NULL THEN 1 ELSE 0 END) AS missing_dependents
FROM credit_risk;


SELECT
    SeriousDlqin2yrs,
    COUNT(*) AS row_count
FROM credit_risk
GROUP BY SeriousDlqin2yrs;