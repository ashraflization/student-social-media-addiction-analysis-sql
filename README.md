# 📱 Digital Addiction Analytics using MySQL

## 🔍 Project Overview
This project explores **student social media addiction patterns** using **MySQL-based data analytics**.  
The goal is to understand how excessive screen time impacts:

- 🎓 Academic Performance  
- 🛌 Sleep Duration  
- 🧠 Mental Health  
- 👥 Social Conflicts  
- 🌍 Platform & Regional Behavior  

The analysis is performed entirely using **SQL queries** with supporting pivot-based visualizations.

---

## 📊 Dataset Summary
- **Dataset Name:** Students Social Media Addiction Survey  
- **Total Records:** 705 Students  
- **Data Type:** Survey-based behavioral dataset  
- **Structure:** Single-table dataset (ideal for descriptive + comparative analytics)

### Key Columns Included
- Avg Daily Usage Hours  
- Addiction Score (1–10)  
- Sleep Hours Per Night  
- Mental Health Score  
- Academic Impact (YES/NO)  
- Conflicts Over Social Media  
- Gender, Country, Most Used Platform  

---

## 🎯 Project Objectives
The main objectives of this project were to:

- Segment students into **usage and addiction risk categories**
- Measure the relationship between **screen time and academic performance**
- Identify the effect of addiction on **sleep deprivation and mental well-being**
- Compare addiction patterns across **platforms, genders, and countries**
- Extract meaningful insights using only **SQL analytics**

---

## 🛠 Tools & Technologies
- **MySQL**
- **MySQL Workbench**
- **Excel Pivot Charts** (for visual representation)

---

## 📌 Key Insights & Findings

### 1️⃣ Screen Time vs Academic Performance
High screen-time students overwhelmingly reported that their academics were affected.

> **Insight:** Academic disruption sharply increases once usage crosses the high-usage threshold.

---

### 2️⃣ Screen Time vs Sleep Duration
Students with heavy screen exposure slept significantly less.

- High usage students averaged **< 6 hours/night**

> **Insight:** Excessive screen time strongly correlates with sleep deprivation.

---

### 3️⃣ Addiction Score vs Mental Health
Higher addiction scores were linked with lower mental health scores.

> **Insight:** Digital addiction impacts psychological well-being beyond academics.

---

### 4️⃣ Addiction vs Social Conflicts
Social media-related conflicts increased steadily with addiction severity.

> **Insight:** Addiction strains real-world relationships and social balance.

---

### 5️⃣ Platform & Country-Level Patterns
Addiction levels varied across platforms and regions.

> **Insight:** Digital environments influence addictive behavior differently.

---

## 📂 Repository Structure

```bash
student-social-media-addiction-analysis-sql/
│
├── dataset/
│   └── Students_Social_Media_Addiction.csv
│
├── sql_queries/
│   └── digital_addiction_analysis.sql
│
├── visuals/
│   └── (Graphs & Pivot Charts)
│
└── README.md
