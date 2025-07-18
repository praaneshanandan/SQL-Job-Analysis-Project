# SQL Job Market Analysis Project

## Introduction

This project analyzes the job market using SQL to uncover insights about top-paying positions, in-demand skills, and optimal career development strategies. Through comprehensive data analysis, this project provides actionable insights for professionals looking to advance their careers in business analysis. In this project the results are focused on mainly a Business Analyst Role.

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

### 1. 💰 Top Paying Jobs for Business Analysts
**File**: `1_Top Paying Jobs for a Role.sql`

The **1_Top-Paying-Jobs-for-a-Role.sql** file identifies the highest-paying Business Analyst positions available remotely. This foundational query filters for positions with specified salaries and remote work options.

**📊 Key Findings:**
- **Salary Range**: $134,550 to $220,000
- **Top Employer**: **Noom** leads with **Lead Business Intelligence Engineer** at **$220,000**
- **Runner-up**: **Uber's** marketplace dynamics role at **$214,500**
- **Market Dominance**: **60% of top-paying positions** come from tech sector organizations

![f68104cb_ckmhgg](https://github.com/user-attachments/assets/0633803f-0559-4ba3-9e85-bd219e0c4b93)

**💡 Notable Insight**: Multicoin Capital appears twice in the top rankings with identical **$200,000 analyst positions**, indicating strong demand for **crypto/blockchain analytics expertise**.

### 2. 🛠️ Skills Required for Top-Paying Jobs
**File**: `2_Top_Paying_Job_Skills.sql`

The **2_Top_Paying_Job_Skills.sql** query maps specific technical requirements to the highest-paying roles, revealing the skill combinations that unlock premium compensation.

**📈 Critical Skills for Top Salaries:**
- **Python**: Universal requirement, appearing in **30% of top-tier positions** (3 out of 10 roles)
- **SQL**: Second most common skill, present in **20% of premium positions**
- **Specialized Premium Tools**: Tableau, Looker, and DevOps technologies like Chef

![8a6550b1_djohm7](https://github.com/user-attachments/assets/cae5f4b7-4050-4b6c-ad0d-e3916c47e755)

**🔥 Skills Hierarchy:**
1. **Python** - Essential programming language
2. **SQL** - Crucial for database operations
3. **Visualization Tools** - Tableau, Looker for premium positions
4. **DevOps Integration** - Chef and similar tools command highest salaries

### 3. 📊 Most In-Demand Skills
**File**: `3_Most In Demand Skill for a Role.sql`

The **3_Most-In-Demand-Skill-for-a-Role.sql** query analyzes the broader market context across all Business Analyst positions, revealing the foundation skills every analyst needs.

**🏆 Market Demand Rankings:**

| Rank | Skill | Job Count | Market Share |
|------|-------|-----------|--------------|
| 🥇 | **SQL** | **17,372** | Foundation skill |
| 🥈 | **Excel** | **17,134** | Business standard |
| 🥉 | **Tableau** | **9,324** | Visualization leader |
| 4️⃣ | **Power BI** | **9,251** | Microsoft ecosystem |
| 5️⃣ | **Python** | **8,097** | Programming essential |

**💭 Market Insight**: The **visualization battleground** between Tableau (9,324) and Power BI (9,251) shows nearly equal market demand, while **Python** rounds out the top five with solid 8,097 postings.

### 4. 💸 Top Paying Skills
**File**: `4_Top Paying Skills.sql`

The **4_Top-Paying-Skills.sql** query identifies which individual skills command the highest average salaries, revealing specialization opportunities.

**💰 Highest-Paying Skills Breakdown:**
- **🏆 Chef (DevOps)**: **$220,000** average (specialized automation)
- **🥈 NumPy**: **$157,500** (advanced data science)
- **🥉 Ruby**: **$150,000** (premium programming)
- **📊 Hadoop**: **$139,201** (big data specialist)
- **☁️ Cloud Platforms**: **$105K-$112K** range (AWS, Azure, GCP)

**⚡ Strategic Insight**: Specialized technical skills in **big data**, **machine learning**, and **DevOps** domains command significant premiums over traditional business tools.

### 5. 🎯 Optimal Skills Analysis
**File**: `5_Optimal Skills.sql`

The **5_Optimal-Skills.sql** query represents the most sophisticated analysis, balancing both **salary potential** and **job market demand** to identify the best investment opportunities.

**🔍 Methodology**: Filters for statistical significance (>10 job postings) and ranks by optimal combination of compensation and opportunity.

![580c7462_wtp7td](https://github.com/user-attachments/assets/1bc65439-3420-4ac9-bc83-9cef749b7e80)

**📍 Strategic Skill Quadrants:**

**🎯 OPTIMAL (High Demand + High Salary):**
- **Python**: **$104,277 avg** with **143 jobs** - Perfect balance
- **R**: **$105,969 avg** with **73 jobs** - Data science foundation
- **Tableau**: **$98,794 avg** with **212 jobs** - Visualization leader

**💎 SPECIALIZATION (Low Demand + High Salary):**
- **Hadoop**: **$139,201 avg** with **14 jobs** - Big data premium
- **Phoenix**: **$135,248 avg** with **16 jobs** - Niche technology

**🏗️ FOUNDATION (High Demand + Standard Salary):**
- **SQL & Excel**: Market fundamentals with broad opportunity

## Database Structure

The project utilizes a **star schema design** with four main tables:

- **job_postings_fact**: Central fact table containing job posting details
- **company_dim**: Company information and details  
- **skills_dim**: Skill definitions and categories
- **skills_job_dim**: Bridge table connecting jobs to required skills

**📁 Dataset Source**: [Google Drive Link](https://drive.google.com/drive/folders/1L2baoFhiVQTXS3YsR_HGC4rdbrfur5t6?usp=sharing)

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

### 🏗️ Foundation Skills (Must-Have)
- **SQL**: Universal requirement across all levels
- **Excel**: Still essential for business communication
- **Business acumen**: Understanding of business processes and strategy

### 🚀 Growth Skills (High Demand + Good Pay)
- **Python**: Excellent balance of demand and salary potential
- **Tableau/Power BI**: Essential for modern data visualization
- **Cloud platforms**: AWS, Azure, or GCP for scalability

### 💎 Premium Skills (High Salary Potential)
- **Big Data technologies**: Hadoop, Spark for enterprise roles
- **Advanced analytics**: R, machine learning capabilities
- **Specialized tools**: Snowflake, Looker for cutting-edge positions

### 🎯 Career Progression Path
1. **Master the fundamentals**: SQL, Excel, basic business analysis
2. **Add visualization**: Tableau or Power BI certification
3. **Learn programming**: Python for data manipulation and analysis
4. **Specialize**: Choose cloud platforms or big data technologies
5. **Stay current**: Continuously learn emerging tools and technologies

**🎯 Final Insight**: This analysis demonstrates that the most successful Business Analysts combine traditional business skills with modern technical capabilities, positioning themselves at the intersection of business strategy and data science.


