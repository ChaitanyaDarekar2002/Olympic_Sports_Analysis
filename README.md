# 🏅 Olympics Sports Analytics

An end-to-end **Olympics Sports Analytics** project using **Microsoft SQL Server, SQL Views, Power BI, and GitHub** to analyze historical Olympic Games data and transform raw data into meaningful business insights.

The project covers the complete analytics workflow — from database creation and SQL-based data analysis to data modeling and interactive Power BI dashboard development.

---

## 📌 Project Overview

The objective of this project is to analyze historical Olympic Games data and identify important trends and patterns related to:

* 🏟️ Olympic Games and hosting history
* 🏃 Sports and events
* 👥 Athlete participation
* 🥇 Medal distribution
* 🌍 Country and regional performance
* 📈 Participation and performance trends

**Microsoft SQL Server** was used for database management, data exploration, SQL queries, and creating **SQL Views** for analysis. The prepared data was then connected to **Power BI** to create an interactive multi-page dashboard.

---

## 🎯 Problem Statement

The Olympics generate a large amount of historical data involving athletes, countries, sports, events, games, and medals.

This project aims to answer analytical questions such as:

* How have Olympic Games changed over time?
* Which countries have performed best?
* Which sports have the highest participation?
* How has athlete participation evolved?
* How has gender participation changed?
* Which countries and regions dominate medal counts?
* Which sports contribute the most medals?
* How have Olympic events evolved over the years?

The goal is to convert these findings into clear and interactive visual insights using Power BI.

---

## 🔄 Project Workflow

```text
                  Olympic Dataset
                         │
                         ▼
               Microsoft SQL Server
                         │
              ┌──────────┴──────────┐
              │                     │
        SQL Queries              SQL Views
              │                     │
              └──────────┬──────────┘
                         ▼
                   Data Analysis
                         │
                         ▼
                    Power BI
                         │
                         ▼
              Interactive Dashboard
                         │
                         ▼
                 Business Insights
                         │
                         ▼
                    GitHub
```

---

## 🛠️ Tech Stack

| Technology                              | Purpose                                     |
| --------------------------------------- | ------------------------------------------- |
| **Microsoft SQL Server**                | Database creation and data management       |
| **SQL Server Management Studio (SSMS)** | SQL development and database administration |
| **SQL Views**                           | Creating reusable analytical datasets       |
| **SQL Queries**                         | Data exploration and business analysis      |
| **Power BI Desktop**                    | Dashboard development and visualization     |
| **DAX**                                 | Measures and calculated analysis            |
| **Git**                                 | Version control                             |
| **GitHub**                              | Project hosting and documentation           |
| **VS Code**                             | Project and file management                 |

---

## 📂 Dataset

The project uses historical Olympic Games data containing information about:

* Olympic Games
* Athletes
* Sports
* Events
* Countries / Regions
* Medals
* Host Cities
* Athlete participation

The data was imported into **Microsoft SQL Server** and organized into relational tables for analysis.

---

## 🗄️ Database Design

The Olympic dataset contains multiple related tables representing different entities within the Olympic Games.

### Main Tables

| Table                | Description                            |
| -------------------- | -------------------------------------- |
| **City**             | Olympic host cities                    |
| **Competitor Event** | Athlete participation in events        |
| **Event**            | Olympic events                         |
| **Games**            | Olympic editions                       |
| **Games City**       | Relationship between games and cities  |
| **Games Competitor** | Athlete participation in Olympic Games |
| **Medal**            | Medal information                      |
| **NOC Region**       | National Olympic Committee regions     |
| **Person**           | Athlete information                    |
| **Person Region**    | Athlete-country relationship           |
| **Sport**            | Olympic sports                         |

### Entity Relationship Diagram

The database follows a relational structure using **primary keys and foreign keys** to connect Olympic Games, athletes, sports, events, countries, cities, and medals.

![Olympics ERD](Screenshots/ERD_Diagram.png)

---

# 📊 SQL Analysis

SQL Server was used to perform **Exploratory Data Analysis (EDA)** and answer business-oriented questions.

The analysis includes:

### 🏟️ Olympic Games Analysis

* Number of Olympic Games
* Summer vs Winter Olympics
* Olympic Games by year
* Olympic Games by decade
* Host city analysis
* Historical Olympic trends

### 🏃 Sports & Events Analysis

* Number of sports
* Number of events
* Sports participation trends
* Events by sport
* Gender-wise event analysis
* Evolution of Olympic events

### 👥 Athlete Analysis

* Athlete participation
* Gender distribution
* Athlete age analysis
* Athlete demographics
* Participation trends over time

### 🥇 Medal Analysis

* Total medals
* Gold, Silver and Bronze distribution
* Country-wise medal performance
* Sport-wise medal distribution
* Medal trends across Olympic Games

### 🌍 Regional Analysis

* Country participation
* Regional participation
* NOC analysis
* Medal distribution by region
* Country performance comparison

---

# 🗂️ SQL Views

One of the important parts of this project was creating **SQL Views** to simplify complex analysis and provide clean datasets for reporting.

SQL Views were created by combining multiple tables using:

* `INNER JOIN`
* `LEFT JOIN`
* `GROUP BY`
* Aggregate Functions
* `CASE`
* Subqueries
* CTEs
* Window Functions

These views helped create reusable analytical datasets that could be directly consumed by Power BI.

### Example View Workflow

```text
Multiple SQL Tables
        │
        ▼
    SQL Joins
        │
        ▼
Data Transformation
        │
        ▼
   SQL View
        │
        ▼
    Power BI
        │
        ▼
Dashboard Visuals
```

---

# 📈 Power BI Dashboard

The Power BI dashboard contains multiple interactive pages designed to provide a complete overview of Olympic Games data.

## 🏅 1. Olympic Games Overview

### Key Metrics

* Total Olympic Games
* Summer Olympics
* Winter Olympics
* Participating Countries
* Total Athletes
* Total Events

### Visual Analysis

* Olympic Games by year
* Summer vs Winter comparison
* Games by decade
* Top host cities
* Participation trends

---

## 🏃 2. Sports & Events Analysis

### Analysis Includes

* Sports distribution
* Events by sport
* Sports participation trends
* Events by gender
* Number of events over time
* Popular Olympic sports

---

## 👥 3. Athlete Analysis

### Analysis Includes

* Male vs Female participation
* Athlete age distribution
* Athlete participation trends
* Athlete demographics
* Participation by Olympic Games

---

## 🥇 4. Medal Analysis

### Analysis Includes

* Total medal count
* Gold medal leaders
* Silver and Bronze distribution
* Country-wise medal performance
* Sport-wise medal distribution
* Medal trends over time

---

## 🌍 5. Regional Analysis

### Analysis Includes

* Regional participation
* Country distribution
* NOC analysis
* Medal distribution by region
* Country-wise performance
* Regional sporting strengths

---

# 📷 Dashboard Preview

### 🏅 Olympic Games Overview

<img width="1907" height="1019" alt="Screenshot 2026-08-12 151114" src="https://github.com/user-attachments/assets/f288ab1a-4bc3-4610-9658-c0e9c0ebd75c" />


### 🏃 Sports & Events Analysis

<img width="1907" height="1023" alt="Screenshot 2026-08-13 143944" src="https://github.com/user-attachments/assets/03d716a1-d785-4419-92d6-4f0877d6c406" />


### 👥 Athlete Analysis

<img width="1907" height="1021" alt="Screenshot 2026-08-13 143908" src="https://github.com/user-attachments/assets/8ca31bfe-872d-436e-98d9-7b998ea04298" />


### 🥇 Medal Analysis

<img width="1907" height="1019" alt="Screenshot 2026-08-14 141739" src="https://github.com/user-attachments/assets/37f59718-68d1-492a-bacc-2ae477a753de" />


### 🌍 Regional Analysis

![Regional Analysis](Screenshots/Dashboard_05_Regional_Analysis.png)

### Medal Table

<img width="1907" height="1019" alt="Screenshot 2026-08-14 141837" src="https://github.com/user-attachments/assets/0e571545-7f00-47e2-8a9a-56ce9f563b1d" />


---

# 💡 Key Insights

The analysis of historical Olympic data revealed several important trends.

### 🏟️ Olympic Games

* Summer Olympics contain significantly more sports and events than Winter Olympics.
* Olympic participation has increased considerably over time.
* The number of participating countries has expanded throughout Olympic history.

### 🏃 Sports & Events

* New sports and events have been introduced over different Olympic editions.
* Some historical events have been discontinued or modified.
* Sports participation has evolved along with changes in Olympic regulations.

### 👥 Athletes

* Athlete participation has increased significantly over time.
* Female participation has grown considerably across Olympic Games.
* Mixed and women's events have increased Olympic representation.

### 🥇 Medals

* A relatively small group of countries consistently performs strongly in the overall medal standings.
* Medal performance varies significantly across different sports.
* Certain countries demonstrate strong performance in specific sports.

### 🌍 Regional Performance

* Olympic participation has expanded across a wider range of countries.
* Different regions demonstrate strengths in different sporting disciplines.
* Historical sporting infrastructure and development contribute to regional performance.

---

# 📈 Business Recommendations

Based on the analysis, the following recommendations can be considered:

1. **Support emerging Olympic nations**
   Develop athlete training and sporting infrastructure programs for countries with lower historical participation.

2. **Promote gender inclusion**
   Continue increasing opportunities for women's and mixed-gender events.

3. **Analyze sport-specific performance**
   Use historical medal data to identify sports where countries have the highest potential.

4. **Improve resource planning**
   Historical participation trends can help organizers plan venues, events, and resources.

5. **Encourage global participation**
   Programs focused on developing countries can help increase worldwide Olympic representation.

---

# ⚡ Challenges Faced

During the development of this project, several practical challenges were addressed:

* Importing and managing a multi-table Olympic database in SQL Server.
* Understanding relationships between multiple relational tables.
* Writing complex SQL queries for business questions.
* Creating SQL Views from multiple tables.
* Handling joins and aggregations across large datasets.
* Preparing data for Power BI.
* Building an effective Power BI data model.
* Creating DAX measures for dashboard KPIs.
* Designing an interactive multi-page dashboard.
* Organizing project files and documentation using Git and GitHub.

---

# 📁 Project Structure

```text
Olympics-Sports-Analytics/
│
├── Dataset/
│   ├── CSV/
│   └── SQL/
│
├── SQL/
│   ├── Database_Creation/
│   ├── SQL_Queries/
│   └── SQL_Views/
│
|
│
├── README.md
└── .gitignore
```

---


---

## Step 2 — Setup SQL Server Database

1. Open **SQL Server Management Studio (SSMS)**.
2. Create a new database.
3. Execute the database creation SQL script.
4. Import or execute the required SQL data scripts.
5. Verify all tables and relationships.
6. Execute the SQL analysis queries.
7. Create the required SQL Views.

---

## Step 3 — SQL Analysis

Open the SQL query files available in the project.

Run the queries to explore:

* Olympic Games
* Sports
* Events
* Athletes
* Countries
* Medals
* Regional performance

The SQL Views can then be used as prepared analytical datasets for Power BI.

---


# 📌 Skills Demonstrated

### SQL & Database

* SQL Server
* SQL Server Management Studio
* Database Design
* Relational Database
* Primary Keys & Foreign Keys
* SQL Joins
* Aggregate Functions
* `GROUP BY`
* `HAVING`
* `CASE`
* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* SQL Views
* Exploratory Data Analysis

### Power BI

* Data Modeling
* DAX
* Measures
* Calculated Columns
* KPI Cards
* Interactive Dashboards
* Slicers
* Filters
* Drill-down Analysis
* Data Visualization
* Dashboard Storytelling

### Analytics

* Data Cleaning
* Exploratory Data Analysis
* Trend Analysis
* Comparative Analysis
* Business Insights
* Data Interpretation
* Analytical Thinking

### Tools

* Microsoft SQL Server
* SQL Server Management Studio
* Power BI Desktop
* VS Code
* Git
* GitHub

---

# 🔮 Future Improvements

Possible improvements for future versions include:

* Publish the Power BI dashboard to Power BI Service.
* Add drill-through pages for detailed analysis.
* Add advanced DAX measures and KPIs.
* Include additional Olympic datasets.
* Add predictive analysis for future participation trends.
* Improve dashboard navigation using buttons and bookmarks.
* Add more detailed country-level performance analysis.
* Create automated data refresh pipelines.

---

# 🙏 Acknowledgements

This project was developed as part of a hands-on **Data Analytics learning journey**, with the goal of strengthening practical skills in:

**SQL Server • SQL Views • Power BI • DAX • Data Visualization • Exploratory Data Analysis • Business Intelligence**

Special thanks to the dataset providers for making historical Olympic data available for analysis.

---

# 👨‍💻 Author

**Chaitanya Darekar**

Aspiring Data Analyst passionate about transforming raw data into meaningful business insights using **SQL, Power BI, Data Analytics, and Visualization**.

---


⭐ **If you found this project useful, consider giving the repository a star!**
