/*
Optimal Skills to Learn for Business Analysts

What are the most optimal skills to learn (aka it’s in high demand and a high-paying skill)?
- Identify skills in high demand and associated with high average salaries for Business Analyst roles
- Why? Targets skills that offer job security (high demand) and financial benefits (high salaries), 
    offering strategic insights for career development in data analysis
    
*/

WITH skills_demand AS (
    SELECT 
        sjd.skill_id, 
        sd.skills AS skill_name, 
        COUNT(*) AS job_count
    FROM 
        skills_job_dim AS sjd
    INNER JOIN 
        job_postings_fact AS jpf ON jpf.job_id = sjd.job_id
    INNER JOIN 
        skills_dim AS sd ON sd.skill_id = sjd.skill_id
    WHERE 
        jpf.job_title_short = 'Business Analyst'
        AND jpf.salary_year_avg IS NOT NULL
    GROUP BY 
        sjd.skill_id, sd.skills
),
avg_salary AS (
    SELECT 
        sjd.skill_id,
        sd.skills AS skill_name,
        AVG(jpf.salary_year_avg) AS avg_yearly_salary
    FROM 
        job_postings_fact AS jpf
    INNER JOIN 
        skills_job_dim AS sjd ON jpf.job_id = sjd.job_id
    INNER JOIN 
        skills_dim AS sd ON sjd.skill_id = sd.skill_id
    WHERE 
        jpf.job_title_short = 'Business Analyst'
        AND jpf.salary_year_avg IS NOT NULL
    GROUP BY 
        sjd.skill_id, sd.skills
)

SELECT 
    sd.skill_id, 
    sd.skill_name, 
    avg_salary.avg_yearly_salary, 
    sd.job_count
FROM 
    skills_demand AS sd
INNER JOIN 
    avg_salary ON sd.skill_id = avg_salary.skill_id
WHERE sd.job_count>10
ORDER BY 
    avg_salary.avg_yearly_salary DESC,
    sd.job_count DESC
    
LIMIT 20;


/*

Result:
[
  {
    "skill_id": 97,
    "skill_name": "hadoop",
    "avg_yearly_salary": "139201.357142857143",
    "job_count": "14"
  },
  {
    "skill_id": 137,
    "skill_name": "phoenix",
    "avg_yearly_salary": "135248.183593750000",
    "job_count": "16"
  },
  {
    "skill_id": 2,
    "skill_name": "nosql",
    "avg_yearly_salary": "119330.363636363636",
    "job_count": "11"
  },
  {
    "skill_id": 80,
    "skill_name": "snowflake",
    "avg_yearly_salary": "112542.676470588235",
    "job_count": "34"
  },
  {
    "skill_id": 185,
    "skill_name": "looker",
    "avg_yearly_salary": "110580.640000000000",
    "job_count": "25"
  },
  {
    "skill_id": 76,
    "skill_name": "aws",
    "avg_yearly_salary": "105996.086875000000",
    "job_count": "25"
  },
  {
    "skill_id": 5,
    "skill_name": "r",
    "avg_yearly_salary": "105969.150256849315",
    "job_count": "73"
  },
  {
    "skill_id": 8,
    "skill_name": "go",
    "avg_yearly_salary": "105701.484848484848",
    "job_count": "33"
  },
  {
    "skill_id": 1,
    "skill_name": "python",
    "avg_yearly_salary": "104277.110030594406",
    "job_count": "143"
  },
  {
    "skill_id": 74,
    "skill_name": "azure",
    "avg_yearly_salary": "103836.363636363636",
    "job_count": "22"
  },
  {
    "skill_id": 92,
    "skill_name": "spark",
    "avg_yearly_salary": "101999.285714285714",
    "job_count": "14"
  },
  {
    "skill_id": 186,
    "skill_name": "sas",
    "avg_yearly_salary": "100308.161317567568",
    "job_count": "37"
  },
  {
    "skill_id": 7,
    "skill_name": "sas",
    "avg_yearly_salary": "100308.161317567568",
    "job_count": "37"
  },
  {
    "skill_id": 81,
    "skill_name": "gcp",
    "avg_yearly_salary": "100220.909090909091",
    "job_count": "11"
  },
  {
    "skill_id": 182,
    "skill_name": "tableau",
    "avg_yearly_salary": "98793.627948113208",
    "job_count": "212"
  },
  {
    "skill_id": 184,
    "skill_name": "dax",
    "avg_yearly_salary": "96950.000000000000",
    "job_count": "14"
  },
  {
    "skill_id": 191,
    "skill_name": "microstrategy",
    "avg_yearly_salary": "96762.545454545455",
    "job_count": "11"
  },
  {
    "skill_id": 77,
    "skill_name": "bigquery",
    "avg_yearly_salary": "95946.428571428571",
    "job_count": "14"
  },
  {
    "skill_id": 201,
    "skill_name": "alteryx",
    "avg_yearly_salary": "95496.875000000000",
    "job_count": "16"
  },
  {
    "skill_id": 78,
    "skill_name": "redshift",
    "avg_yearly_salary": "95387.857142857143",
    "job_count": "14"
  }
]
*/