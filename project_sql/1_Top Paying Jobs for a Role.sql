/*

Top Paying Jobs for a Role

- Identify the top 10 highest-paying Business Analyst roles that are available remotely
- Focuses on job postings with specified salaries (remove nulls)
- BONUS: Include company names of top 10 roles
- Why? Highlight the top-paying opportunities for Business Analysts, offering insights into employment options and location flexibility.

*/

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

/*
Result:

[
  {
    "job_id": 502610,
    "company_name": "Noom",
    "job_title": "Lead Business Intelligence Engineer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "220000.0",
    "job_posted_date": "2023-08-29 18:26:36"
  },
  {
    "job_id": 112859,
    "company_name": "Uber",
    "job_title": "Manager II, Applied Science - Marketplace Dynamics",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "214500.0",
    "job_posted_date": "2023-12-18 08:02:37"
  },
  {
    "job_id": 1069582,
    "company_name": "Multicoin Capital",
    "job_title": "Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-12-21 13:01:17"
  },
  {
    "job_id": 998056,
    "company_name": "Multicoin Capital",
    "job_title": "Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "200000.0",
    "job_posted_date": "2023-10-04 11:01:48"
  },
  {
    "job_id": 17458,
    "company_name": "Harnham",
    "job_title": "Senior Economy Designer",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "190000.0",
    "job_posted_date": "2023-06-21 18:11:35"
  },
  {
    "job_id": 416185,
    "company_name": "Gladly",
    "job_title": "Staff Revenue Operations Analyst",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "170500.0",
    "job_posted_date": "2023-12-21 09:50:43"
  },
  {
    "job_id": 1099753,
    "company_name": "CyberCoders",
    "job_title": "REMOTE - Business Intelligence Analyst (Leadership Role) - GCP",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "162500.0",
    "job_posted_date": "2023-10-11 12:01:45"
  },
  {
    "job_id": 1313937,
    "company_name": "CyberCoders",
    "job_title": "Manager Analytics and Reporting",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "145000.0",
    "job_posted_date": "2023-06-22 13:01:41"
  },
  {
    "job_id": 106225,
    "company_name": "USAA",
    "job_title": "Business Strategy Analyst Senior (Hybrid)",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "138640.0",
    "job_posted_date": "2023-06-30 14:01:54"
  },
  {
    "job_id": 661103,
    "company_name": "Get It Recruit - Marketing",
    "job_title": "Marketing Analytics Manager",
    "job_location": "Anywhere",
    "job_schedule_type": "Full-time",
    "salary_year_avg": "134550.0",
    "job_posted_date": "2023-08-03 19:59:22"
  }
]

*/