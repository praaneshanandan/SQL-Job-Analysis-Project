/*

SELECT job_title_short AS title, job_location as Location, 
job_posted_date AT TIME ZONE 'UTC' AT TIME ZONE 'EST' AS date_time,
EXTRACT(Month FROM job_posted_date) AS date_month,
EXTRACT(Year FROM job_posted_date) AS date_year
FROM job_postings_fact
LIMIT 5;

Select COUNT(job_id) as job_posted_count, 
EXTRACT(Month from job_posted_date) AS month 
from job_postings_fact 
WHERE job_title_short ='Data Analyst'
GROUP BY month
ORDER BY job_posted_count;

SELECT AVG(salary_year_avg) AS avg_yearly_sal, 
    AVG(salary_hour_avg) AS avg_hourly_sal,job_schedule_type
FROM job_postings_fact
WHERE job_posted_date >= '2023-06-01'
GROUP BY job_schedule_type;

CREATE TABLE january_jobs AS
    SELECT * from job_postings_fact 
    WHERE EXTRACT(Month from job_posted_date) = 1;

CREATE TABLE february_jobs AS
    SELECT * from job_postings_fact 
    WHERE EXTRACT(Month from job_posted_date) = 2;

CREATE TABLE march_jobs AS
    SELECT * from job_postings_fact 
    WHERE EXTRACT(Month from job_posted_date) = 3;

Select * from march_jobs

CASE statments

Subqueries and CTEs(WITH)

WITH remote_job_skills AS (
    Select skill_id, COUNT(*) as skill_count
    from skills_job_dim as sjd
    INNER JOIN job_postings_fact as jpf 
    ON jpf.job_id = sjd.job_id
    WHERE jpf.job_work_from_home=TRUE 
    AND jpf.job_title_short = 'Data Analyst'
    GROUP BY skill_id
)

Select rjs.skill_id, sd.skills as name, rjs.skill_count as job_count
from remote_job_skills as rjs
INNER JOIN skills_dim as sd ON sd.skill_id = rjs.skill_id
ORDER BY rjs.skill_count DESC
LIMIT 5;

UNIONS

WITH quarterlyjobs AS (
    Select * from january_jobs
    UNION ALL
    Select * from february_jobs
    UNION ALL
    Select * from march_jobs
)

Select * from quarterlyjobs 
WHERE salary_year_avg>70000 AND
job_title_short='Business Analyst';

*/

