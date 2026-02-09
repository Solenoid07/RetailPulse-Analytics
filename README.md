# 📊 RetailPulse: Inventory & Supply Chain Analytics

### **Project Overview**
RetailPulse is a data analytics pipeline designed to solve **Inventory Stockouts**—a major revenue leak in retail. By analyzing 6 months of sales transaction data (500+ rows), this project identifies "High-Demand, Low-Stock" items to optimize supply chain replenishment.

* **Role:** Business Analyst / Data Engineer
* **Tech Stack:** MySQL (8.0), Python (Pandas, Seaborn), Excel (Pivot Tables).

### **💼 Business Problem**
The retail store was facing two conflicting issues:
1.  **Lost Revenue:** Popular items (like 'Wireless Buds') were stocking out during peak weekends.
2.  **Dead Inventory:** Low-performing items were occupying valuable warehouse space.

### **🛠️ The Solution (My Approach)**
I built a 3-step analytics pipeline to solve this:

**1. Data Engineering (Python & SQL)**
* Simulated a realistic retail dataset (500 rows) with seasonality and random stockout events using Python.
* Designed a relational schema in **MySQL** and implemented an ETL process to import raw CSV data into a structured `retail_db` database.

**2. Risk Analysis (SQL)**
* Wrote complex aggregate queries (`GROUP BY`, `HAVING`) to isolate products with **Sales Velocity > 30** but **Stock Levels < 5**.
* *Key Insight:* Identified that 'Wireless Buds' accounted for 40% of stockout incidents despite being a top revenue driver.

**3. Visualization (Excel & Python)**
* Validated findings using **Excel Pivot Tables** for non-technical stakeholders.
* Built a Seaborn dashboard to visualize Revenue vs. Category.

### **📸 Project Evidence**

**SQL Analysis: Identifying the "Stockout Trap"**
*(Identify high-velocity items at risk of hitting zero stock)*
![SQL Query Output](sql_analysis_evidence.png)

**Excel Verification: The "Business View"**
*(Using Pivot Tables to confirm critical stock levels for 'Wireless Buds')*
![Excel Dashboard](excel_dashboard.png)

**Python Dashboard: Revenue Trends**
*(Visualizing category performance for executive reporting)*
![Revenue Chart](revenue_dashboard.png)

### **🚀 Key Results**
* **Reduced Stockout Risk:** Proposed a "Reorder Point" strategy that could prevent an estimated **15% monthly revenue loss**.
* **Optimized Storage:** Identified 2 categories of "Slow Movers" for potential clearance sales.
