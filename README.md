# 📉 Global Tech Layoffs Data Analysis (2020-2023)

Welcome to my Exploratory Data Analysis (EDA) project! In this repository, I dive deep into the dataset of global tech layoffs from March 2020 to March 2023. Using advanced SQL queries, I uncovered hidden trends, identified the hardest-hit sectors, and analyzed the timeline of the tech industry's massive workforce reduction.

---

## 📖 About the Dataset
The dataset contains over 2,000 records of tech companies that conducted layoffs globally. It includes critical metrics such as:
* **Company Details**: Name, location, industry, and funding stage.
* **Layoff Metrics**: Total number of employees laid off and the percentage of the workforce affected.
* **Financial Context**: Total funds raised (in millions).
* **Timeline**: The exact date the layoffs were announced.

*(Note: The raw data for this project was cleaned and standardized in a separate SQL script. You can view the Data Cleaning process here: [Insert Link to your Data Cleaning Repo])*

---

## 🎯 Business Questions Explored
To understand the scale and impact of these layoffs, I structured my analysis around the following key questions:
1. **Who were the biggest victims?** Which companies laid off the most employees in total?
2. **When was the absolute worst time for the tech industry?** How did layoffs trend month-over-month and year-over-year?
3. **Which industries were hit the hardest?** Did certain sectors suffer more than others?
4. **Which countries experienced the most job losses?** 
5. **Did funding guarantee safety?** How did layoffs correlate with the amount of venture capital a company had raised?
6. **Who completely shut down?** Which companies laid off 100% (1.0) of their workforce?

---

## 🛠️ Tools & Technologies
* **Database Management System**: MySQL
* **Query Language**: SQL
* **Key SQL Concepts Used**:
  * **Aggregations & Grouping**: `SUM()`, `AVG()`, `GROUP BY`, `HAVING`
  * **Time-Series Analysis**: Date formatting, rolling totals using Window Functions (`SUM() OVER()`)
  * **Advanced Analytics**: CTEs (Common Table Expressions), Window Functions (`RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`)
  * **Data Filtering**: Complex `WHERE` clauses, `CASE` statements for custom categorization

---

## 💡 Key Insights & Findings

Through my SQL queries, several striking patterns emerged:

1. **The 2022-2023 Cliff**: While layoffs existed in 2020 and 2021, there was a massive, unprecedented spike starting in late 2022, peaking in January and February of 2023.
2. **The Giants Fell Hardest**: Companies like **Amazon**, **Meta**, **Google**, **Microsoft**, and **Salesforce** accounted for tens of thousands of job losses, dwarfing the numbers of smaller startups in terms of total headcount.
3. **Industry Impact**: While the "Consumer" and "Retail" sectors saw high total numbers, the **Crypto** and **Transportation** industries were devastated, with many companies facing existential crises.
4. **Funding Was No Shield**: It was fascinating (and shocking) to see companies that had raised billions of dollars in funding (e.g., WeWork, Uber, Crypto.com) still execute massive layoffs. High venture capital did not protect against macroeconomic downturns.
5. **Total Shutdowns**: Several companies, particularly in the Crypto and Food sectors, laid off exactly 100% (`percentage_laid_off = 1.0`) of their staff, signaling complete business closures.
