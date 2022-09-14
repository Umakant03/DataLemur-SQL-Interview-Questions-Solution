WITH t1 AS(
SELECT company_id,title,description,COUNT(*) count
FROM job_listings
GROUP BY company_id,title,description
HAVING COUNT(*)>1)

SELECT COUNT(*) duplicate_companies
FROM t1;