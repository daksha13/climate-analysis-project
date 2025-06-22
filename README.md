# 🌍 Climate Trend Analysis: India (1901–2021)

This project analyzes historical annual and seasonal temperature data for India from 1901 to 2021. Using Excel, Python, SQL, and Power BI, the goal is to identify long-term climate trends, highlight extreme years, and visualize warming patterns across decades.

---

## 📁 Project Structure

```
climate-analysis/
├── data/
│ └──  TEMP_ANNUAL_MEAN_1901-2021(raw file).csv   # Raw data
│ └── climate_cleaned.csv                        # Cleaned dataset
├── charts/
│ └── (all .png visualizations)                # Power BI visuals
├── climate_analysis.ipynb                     # Python EDA & visuals
├── climate_queries.sql                        # SQL queries for deeper analysis
├── climate_dashboard.pbix                     # Power BI dashboard
└── README.md                                  # Project overview
```

---

## 🧰 Tools & Technologies Used

- **Excel** – Initial cleaning and formatting
- **Python (Pandas, Seaborn, Matplotlib)** – Data analysis and visualizations
- **SQL (MySQL via SQL Workbench)** – Aggregation, filtering, trend analysis
- **Power BI** – Final dashboards and storytelling

---

## 🔍 Key Questions Answered

- 🔥 What were the top 5 hottest and coldest years in India?
- 📈 How has the annual mean temperature changed over decades?
- 🌦️ Are seasonal averages (summer, winter, monsoon) rising?
- 🔁 Is there a significant gap between pre-monsoon and monsoon temperatures?

---

## 📊 Highlighted Visuals

- **Line chart**: Annual mean temperature trend (1901–2021)
- **Bar chart**: Decade-wise average temperature
- **Multi-line chart**: Seasonal comparisons (e.g. March–May vs June–Sept)
- **Combined line graph**: 5 hottest and 5 coldest years
- **Table/Card**: Top 5 hottest years with values

---

## 📄 SQL Insights (from `climate_queries.sql`)

- Top 6 hottest years using:
  ```sql
  SELECT YEAR, ANNUAL_MEAN FROM demo.climate_cleaned ORDER BY ANNUAL_MEAN DESC LIMIT 6;
  ```
- Decade-wise temperature averages:
  ```sql
  SELECT FLOOR(YEAR/10)*10 AS decade, ROUND(AVG(ANNUAL_MEAN), 2) AS AVG_TEMP
  FROM demo.climate_cleaned GROUP BY decade;
  ```
- Seasonal comparisons and winter warming trends

---

## 📈 Power BI Dashboard (Highlights)

- Interactive filters by decade or season
- Hover tooltips and dynamic line charts
- Visual summary of India's warming trend

---

## 📌 Dataset Source

- [Open Government Data](https://www.data.gov.in/)
- Original file: `TEMP_ANNUAL_MEAN_1901-2021(raw file).csv`

---

## 🧠 Key Takeaways

- India's average temperature has steadily increased over the last 120+ years
- The hottest years have all occurred post-2000
- Seasonal temperatures (especially summer and winter) are also rising
- Pre-monsoon vs monsoon gap is widening in some years

---

## 🙋‍♀️ Author

**Daksha Verma**  
📍 Data Analyst | SQL • Python • Power BI  
🔗 [GitHub Profile](https://github.com/daksha13)

---

## 📜 License

This project is open-source and free to use for educational and non-commercial purposes.
