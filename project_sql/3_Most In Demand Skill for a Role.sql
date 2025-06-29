/*
Most in-demand skills for a role

What are the most in-demand skills for business analysts?
- Join job postings to inner join table similar to query 2
- Identify the top 5 in-demand skills for a business analyst.
- Focus on all job postings.
- Why? Retrieves the top 5 skills with the highest demand in the job market, 
    providing insights into the most valuable skills for job seekers.
*/

WITH remote_job_skills AS (
    Select skill_id, COUNT(*) as demand_count
    from skills_job_dim as sjd
    INNER JOIN job_postings_fact as jpf 
    ON jpf.job_id = sjd.job_id
    WHERE jpf.job_title_short = 'Business Analyst'
    GROUP BY skill_id
)

Select rjs.skill_id, sd.skills as name, rjs.demand_count as job_count
from remote_job_skills as rjs
INNER JOIN skills_dim as sd ON sd.skill_id = rjs.skill_id
ORDER BY rjs.demand_count DESC
LIMIT 5;

/*

Result

[
  {
    "skill_id": 0,
    "name": "sql",
    "job_count": "17372"
  },
  {
    "skill_id": 181,
    "name": "excel",
    "job_count": "17134"
  },
  {
    "skill_id": 182,
    "name": "tableau",
    "job_count": "9324"
  },
  {
    "skill_id": 183,
    "name": "power bi",
    "job_count": "9251"
  },
  {
    "skill_id": 1,
    "name": "python",
    "job_count": "8097"
  }
]
*/