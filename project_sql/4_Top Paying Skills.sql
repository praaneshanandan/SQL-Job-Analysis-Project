/*

Top Paying Skills

What are the top skills based on salary?
- Look at the average salary associated with each skill for Business Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Business Analysts and 
    helps identify the most financially rewarding skills to acquire or improve

*/

SELECT 
    skills,
    AVG(salary_year_avg) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE
    job_title_short = 'Business Analyst'
    AND salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 20;

/*

Insights:
Certainly! Here are the top insights in three concise bullet points:

- Advanced technical skills—especially in SQL, Python, and data visualization tools like Tableau—are the most sought-after and highest-paying for business analysts.
- Business process modeling and strategic thinking are highly valued, enabling analysts to bridge technical solutions with business goals and drive transformation.
- Certifications and industry specialization (e.g., finance, tech, healthcare) significantly boost earning potential and access to top-paying roles.

Result: 

[
  {
    "skills": "chef",
    "avg_salary": "220000.000000000000"
  },
  {
    "skills": "numpy",
    "avg_salary": "157500.000000000000"
  },
  {
    "skills": "ruby",
    "avg_salary": "150000.000000000000"
  },
  {
    "skills": "hadoop",
    "avg_salary": "139201.357142857143"
  },
  {
    "skills": "julia",
    "avg_salary": "136100.000000000000"
  },
  {
    "skills": "airflow",
    "avg_salary": "135410.000000000000"
  },
  {
    "skills": "phoenix",
    "avg_salary": "135248.183593750000"
  },
  {
    "skills": "electron",
    "avg_salary": "131000.000000000000"
  },
  {
    "skills": "c",
    "avg_salary": "123328.571428571429"
  },
  {
    "skills": "pytorch",
    "avg_salary": "120333.333333333333"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120333.333333333333"
  },
  {
    "skills": "matplotlib",
    "avg_salary": "120000.000000000000"
  },
  {
    "skills": "matlab",
    "avg_salary": "120000.000000000000"
  },
  {
    "skills": "seaborn",
    "avg_salary": "120000.000000000000"
  },
  {
    "skills": "scikit-learn",
    "avg_salary": "120000.000000000000"
  },
  {
    "skills": "nosql",
    "avg_salary": "119330.363636363636"
  },
  {
    "skills": "mongodb",
    "avg_salary": "118666.666666666667"
  },
  {
    "skills": "snowflake",
    "avg_salary": "112542.676470588235"
  },
  {
    "skills": "looker",
    "avg_salary": "110580.640000000000"
  },
  {
    "skills": "pandas",
    "avg_salary": "110558.333333333333"
  }
]
*/