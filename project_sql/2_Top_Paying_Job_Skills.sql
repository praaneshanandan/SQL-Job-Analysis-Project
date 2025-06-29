/* 

Skills Required for Top-Paying  Jobs

What skills are required for the top-paying Business Analyst jobs?
- Use the top 10 highest-paying Business Analyst jobs from first query
- Add the specific skills required for these roles
- Why? It provides a detailed look at which high-paying jobs demand certain skills, 
    helping job seekers understand which skills to develop that align with top salaries
*/


WITH top_paying_jobs AS (
    Select job_id, name AS company_name,
        job_title, job_location, job_schedule_type, 
        salary_year_avg, job_posted_date 
    FROM job_postings_fact 
    LEFT JOIN company_dim ON 
        job_postings_fact.company_id = company_dim.company_id
    WHERE job_title_short = 'Business Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_jobs.company_name, top_jobs.job_title, 
    top_jobs.salary_year_avg, 
    skills_dim.skills AS skill_name
FROM top_paying_jobs AS top_jobs
INNER JOIN skills_job_dim ON 
    top_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON 
    skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY top_jobs.salary_year_avg DESC
LIMIT 10;

/*
Result:

[
  {
    "company_name": "Noom",
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "skill_name": "sql"
  },
  {
    "company_name": "Noom",
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "skill_name": "python"
  },
  {
    "company_name": "Noom",
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "skill_name": "excel"
  },
  {
    "company_name": "Noom",
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "skill_name": "tableau"
  },
  {
    "company_name": "Noom",
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "skill_name": "looker"
  },
  {
    "company_name": "Noom",
    "job_title": "Lead Business Intelligence Engineer",
    "salary_year_avg": "220000.0",
    "skill_name": "chef"
  },
  {
    "company_name": "Uber",
    "job_title": "Manager II, Applied Science - Marketplace Dynamics",
    "salary_year_avg": "214500.0",
    "skill_name": "python"
  },
  {
    "company_name": "Harnham",
    "job_title": "Senior Economy Designer",
    "salary_year_avg": "190000.0",
    "skill_name": "sql"
  },
  {
    "company_name": "Harnham",
    "job_title": "Senior Economy Designer",
    "salary_year_avg": "190000.0",
    "skill_name": "python"
  },
  {
    "company_name": "Harnham",
    "job_title": "Senior Economy Designer",
    "salary_year_avg": "190000.0",
    "skill_name": "r"
  }
]
*/