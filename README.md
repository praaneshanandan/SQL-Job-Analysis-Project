# SQL Job Market Analysis Project

## Introduction

This project analyzes the job market for Business Analysts using SQL to uncover insights about top-paying positions, in-demand skills, and optimal career development strategies. Through comprehensive data analysis, this project provides actionable insights for professionals looking to advance their careers in business analysis.

## Background

The job market for Business Analysts is rapidly evolving, with new technologies and skills becoming increasingly important. This project aims to answer key questions:

- What are the highest-paying Business Analyst positions?
- Which skills are most in-demand for Business Analysts?
- What skills correlate with higher salaries?
- Which skills offer the best combination of high demand and high pay?

The analysis focuses on remote/anywhere positions to provide insights relevant to the modern, flexible work environment.

## Tools I Have Used

- **PostgreSQL**: Primary database management system for storing and querying job market data
- **SQL**: Core language for data analysis and insights extraction
- **pgAdmin**: Database administration and management tool
- **Visual Studio Code**: Development environment for writing and organizing SQL queries
- **Git/GitHub**: Version control and project sharing

## Analysis

The project consists of several key analyses, each designed to answer specific questions about the Business Analyst job market:

### 1. Top Paying Jobs for Business Analysts
**File**: `1_Top Paying Jobs for a Role.sql`

Identifies the top 10 highest-paying remote Business Analyst positions. Key findings:
- Highest salary: $220,000 (Lead Business Intelligence Engineer at Noom)
- Top companies include Noom, Uber, Multicoin Capital, and Harnham
- Average salaries range from $134,550 to $220,000 for top positions

### 2. Skills Required for Top-Paying Jobs
**File**: `2_Top_Paying_Job_Skills.sql`

Analyzes the specific skills required for the highest-paying positions:
- **SQL** and **Python** are consistently required for top-paying roles
- **Excel** and **Tableau** remain important for business intelligence positions
- Specialized tools like **Looker** and **Chef** appear in premium roles

### 3. Most In-Demand Skills
**File**: `3_Most In Demand Skill for a Role.sql`

Identifies the most frequently requested skills across all Business Analyst positions:

| Rank | Skill | Job Count |
|------|-------|-----------|
| 1 | SQL | 17,372 |
| 2 | Excel | 17,134 |
| 3 | Tableau | 9,324 |
| 4 | Power BI | 9,251 |
| 5 | Python | 8,097 |

### 4. Top Paying Skills
**File**: `4_Top Paying Skills.sql`

Analyzes average salaries by skill to identify the highest-paying competencies:
- **Chef**: $220,000 average salary
- **NumPy**: $157,500 average salary
- **Ruby**: $150,000 average salary
- **Hadoop**: $139,201 average salary

### 5. Optimal Skills Analysis
**File**: `5_Optimal Skills.sql`

Combines demand and salary data to identify skills that offer the best combination of high demand and high pay:
- **Hadoop**: High salary ($139,201) with solid demand (14 jobs)
- **Python**: Strong balance with $104,277 average salary and high demand (143 jobs)
- **Snowflake**: $112,543 average salary with growing demand (34 jobs)

## Database Structure

The project uses four main tables:

- **job_postings_fact**: Central fact table containing job posting details
- **company_dim**: Company information and details
- **skills_dim**: Skill definitions and categories
- **skills_job_dim**: Bridge table connecting jobs to required skills

## What I Learned

Through this project, I gained valuable insights into:

### Technical Skills
- **Advanced SQL techniques**: CTEs, JOINs, window functions, and aggregations
- **Database design**: Understanding of star schema and dimensional modeling
- **Data analysis**: Converting business questions into SQL queries
- **Performance optimization**: Creating indexes for better query performance

### Business Insights
- **Market trends**: The increasing importance of cloud technologies and data visualization
- **Skill valuation**: How different skills impact earning potential
- **Career strategy**: The balance between learning high-demand vs. high-paying skills
- **Industry evolution**: The shift toward data-driven business analysis roles

### Key Findings
1. **SQL and Excel remain fundamental** - These appear in virtually all job postings
2. **Cloud skills command premium salaries** - AWS, Azure, and GCP skills are highly valued
3. **Data visualization is critical** - Tableau and Power BI are essential modern skills
4. **Programming skills differentiate candidates** - Python and R separate top performers
5. **Specialization pays** - Niche skills like Hadoop and Snowflake offer high salaries

## Conclusions

Based on this comprehensive analysis, I recommend the following strategy for Business Analyst career development:

### Foundation Skills (Must-Have)
- **SQL**: Universal requirement across all levels
- **Excel**: Still essential for business communication
- **Business acumen**: Understanding of business processes and strategy

### Growth Skills (High Demand + Good Pay)
- **Python**: Excellent balance of demand and salary potential
- **Tableau/Power BI**: Essential for modern data visualization
- **Cloud platforms**: AWS, Azure, or GCP for scalability

### Premium Skills (High Salary Potential)
- **Big Data technologies**: Hadoop, Spark for enterprise roles
- **Advanced analytics**: R, machine learning capabilities
- **Specialized tools**: Snowflake, Looker for cutting-edge positions

### Career Progression Path
1. **Master the fundamentals**: SQL, Excel, basic business analysis
2. **Add visualization**: Tableau or Power BI certification
3. **Learn programming**: Python for data manipulation and analysis
4. **Specialize**: Choose cloud platforms or big data technologies
5. **Stay current**: Continuously learn emerging tools and technologies

This analysis demonstrates that the most successful Business Analysts combine traditional business skills with modern technical capabilities, positioning themselves at the intersection of business strategy and data science.
