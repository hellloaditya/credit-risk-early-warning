SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT Id) AS unique_ids,
    SUM(CASE WHEN SeriousDlqin2yrs IS NULL THEN 1 ELSE 0 END) AS missing_target,
    SUM(CASE WHEN age <= 0 THEN 1 ELSE 0 END) AS invalid_age,
    SUM(CASE WHEN MonthlyIncome < 0 THEN 1 ELSE 0 END) AS invalid_income,
    SUM(CASE WHEN NumberOfDependents < 0 THEN 1 ELSE 0 END) AS invalid_dependents
FROM credit_data;
