# 📊 Crop Production Analysis in India (SQL + Power BI)

## 📌 Project Overview

This project analyzes agricultural crop production data across various Indian states and districts over multiple years. Using **SQL** for data analysis and **Power BI** for visualization, the project uncovers production trends, seasonal patterns, top-performing crops, and land-use efficiency (yield).
The project is designed to demonstrate **end-to-end data analyst skills** including data querying, transformation, KPI creation, and dashboard storytelling.

---

## 🎯 Objectives

* Analyze crop production trends across years
* Identify top crops by state, season, and region
* Calculate year-over-year (YoY) growth
* Evaluate yield efficiency (Production / Area)
* Present insights through interactive Power BI dashboards

---

## 🛠 Tools & Technologies

* **SQL Server (T-SQL)** – Data aggregation, window functions, CTEs
* **Power BI** – Interactive dashboards & DAX measures
* **Excel / CSV** – Dataset handling

---

## 🗂 Recommended Repository Structure

```
Crop-Production-Analysis/
│
├── data/
│   └── crop_production_india.csv
│
├── sql/
│   ├── data_cleaning.sql
│   ├── exploratory_analysis.sql
│   ├── yoy_growth.sql
│   └── top_crops_analysis.sql
│
├── powerbi/
│   ├── crop_production_dashboard.pbix
│   └── dashboard_screenshots/
│       ├── overview.png
│       ├── top_crops.png
│       └── yoy_growth.png
│
├── insights/
│   └── key_findings.md
│
└── README.md
```

---

## 🧾 Dataset Description

**Source:** Government of India – Agricultural Crop Production Statistics

**Key Columns:**

* State_Name
* District_Name
* Crop
* Season
* Crop_Year
* Area (Hectares)
* Production (Tonnes)

---

## 🔍 SQL Analysis Highlights

* Aggregated total production by crop, state, and year
* Used **CTEs and Window Functions (LAG)** for YoY growth
* Identified top crops using **RANK() / DENSE_RANK()**
* Calculated yield efficiency to compare land utilization

---

## 📈 Power BI Dashboard Features

* KPI cards: Total Production, Avg Yield
* Line charts: Production trend over years
* Maps: Top crops by state
* Slicers: Year, Season, Crop, State
* Bar charts: Top crops by region

*(Add dashboard screenshots below)*

---

## 💡 Key Insights

* Rice and Wheat dominate production across most states
* Certain states show high yield despite lower cultivation area
* Seasonal trends reveal strong Kharif dependency
* YoY growth varies significantly by crop and region

---

## 📌 Conclusion

This project demonstrates strong analytical thinking, SQL proficiency, and the ability to convert raw data into meaningful business insights using Power BI. It reflects real-world data analyst responsibilities and is suitable for entry to mid-level analyst roles.

---

## 📬 Contact

**Bhavesh Adlak**
Aspiring Data Analyst
LinkedIn: *(add your link)*
GitHub: *(your profile)*
