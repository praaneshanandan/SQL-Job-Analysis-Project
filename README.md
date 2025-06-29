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

The 1_Top-Paying-Jobs-for-a-Role.sql file identifies the highest-paying Business Analyst positions available remotely. This foundational query filters for positions with specified salaries and remote work options, revealing salary ranges from $134,550 to $220,000. The analysis shows that Noom leads the market with their Lead Business Intelligence Engineer position at $220,000, followed by Uber's marketplace dynamics role at $214,500.

![f68104cb_ckmhgg](https://github.com/user-attachments/assets/0633803f-0559-4ba3-9e85-bd219e0c4b93)

The data reveals that technology companies dominate the premium salary tier, with 60% of top-paying positions coming from tech sector organizations. Notably, Multicoin Capital appears twice in the top rankings with identical $200,000 analyst positions, indicating strong demand for crypto/blockchain analytics expertise.

### 2. Skills Required for Top-Paying Jobs
**File**: `2_Top_Paying_Job_Skills.sql`

The 2_Top_Paying_Job_Skills.sql query maps specific technical requirements to the highest-paying roles. This analysis reveals that Python emerges as the universal requirement, appearing in 30% of top-tier positions (3 out of 10 roles). SQL follows as the second most common skill, present in 20% of premium positions.

![8a6550b1_djohm7](https://github.com/user-attachments/assets/cae5f4b7-4050-4b6c-ad0d-e3916c47e755)

The skills distribution shows a clear hierarchy: Python dominates as the essential programming language, while SQL remains crucial for database operations. Specialized tools like Tableau, Looker, and even DevOps technologies like Chef appear in the highest-paying positions, indicating the premium value of comprehensive technical versatility.

### 3. Most In-Demand Skills
**File**: `3_Most In Demand Skill for a Role.sql`

The 3_Most-In-Demand-Skill-for-a-Role.sql query provides a broader market context by analyzing all Business Analyst positions. SQL leads market demand with 17,372 job postings, followed closely by Excel with 17,134 postings. This creates an interesting dynamic where the most demanded skill (SQL) doesn't necessarily command the highest individual salaries.

| Rank | Skill | Job Count |
|------|-------|-----------|
| 1 | SQL | 17,372 |
| 2 | Excel | 17,134 |
| 3 | Tableau | 9,324 |
| 4 | Power BI | 9,251 |
| 5 | Python | 8,097 |

The analysis reveals that Tableau and Power BI represent the visualization battleground, with 9,324 and 9,251 job postings, respectively. Python rounds out the top five with 8,097 postings, demonstrating strong but not overwhelming demand relative to traditional tools.

### 4. Top Paying Skills
**File**: `4_Top Paying Skills.sql`

The 4_Top-Paying-Skills.sql query identifies which individual skills command the highest average salaries. Surprisingly, Chef (a DevOps automation tool) tops the list at $220,000 average salary, though this reflects a single high-paying position skewing the average. More representative high-paying skills include NumPy ($157,500), Ruby ($150,000), and Hadoop ($139,201).

This analysis reveals the premium value of specialized technical skills, particularly in big data, machine learning, and DevOps domains. Traditional business intelligence tools like Looker ($110,581) and Pandas ($110,558) also command significant premiums over general business skills.

### 5. Optimal Skills Analysis
**File**: `5_Optimal Skills.sql`

The 5_Optimal-Skills.sql query represents the most sophisticated analysis, balancing both salary potential and job market demand. This query filters for skills with statistical significance (>10 job postings) and ranks them by optimal combination of compensation and opportunity.

![580c7462_wtp7td](https://github.com/user-attachments/assets/1bc65439-3420-4ac9-bc83-9cef749b7e80)

The scatter plot visualization reveals four distinct quadrants of opportunity: high-demand/high-salary skills like Python and R represent the optimal investment targets. Meanwhile, specialized skills like Hadoop and Phoenix offer high salaries but limited opportunities, making them strategic specialization choices rather than foundational skills.

## Database Structure

The project uses four main tables:

- **job_postings_fact**: Central fact table containing job posting details
- **company_dim**: Company information and details
- **skills_dim**: Skill definitions and categories
- **skills_job_dim**: Bridge table connecting jobs to required skills

Link for the dataset: https://drive.google.com/drive/folders/1L2baoFhiVQTXS3YsR_HGC4rdbrfur5t6?usp=sharing

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
