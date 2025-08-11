# elevatelabs_task4_sqldataanalysis
# Task 4 — SQL Data Analysis on Olist Dataset

## 📌 Objective
The goal of this task was to perform **SQL-based data analysis** on the Olist E-Commerce dataset to extract meaningful business insights. The dataset is stored in a SQLite database (`olist.sqlite`) and contains multiple related tables.

---

## 📖 Description of What I Performed

For **Task 4: SQL for Data Analysis**, I worked with the **Olist E-Commerce dataset** stored in a SQLite database.  
The main objective was to **extract meaningful business insights** by writing and executing SQL queries using **DB Browser for SQLite**.

### Steps I Performed:
1. **Explored the Database Structure**
   - Listed all tables using:
     ```sql
     SELECT name FROM sqlite_master WHERE type='table';
     ```
   - Viewed sample records from `orders` and `customers` tables using `LIMIT`.

2. **Basic Data Extraction**
   - Selected specific columns and viewed top rows.
   - Understood relationships between tables (`orders`, `order_items`, `products`, `order_reviews`).

3. **Aggregation & Grouping**
   - Top 10 customers by total orders using `COUNT()` + `GROUP BY`.
   - Top 10 products by total sales using `SUM()`.

4. **Joins for Combined Insights**
   - Joined `customers`, `orders`, and `order_items` to calculate **order value per customer**.
   - Joined `order_items` and `order_reviews` to calculate **average review score per product**.
   - Joined `products` and `order_items` to find **top product categories by total sales**.

5. **Sorting & Filtering**
   - Applied `ORDER BY` to rank results based on sales, order count, or average score.

6. **Output & Documentation**
   - Saved all queries in `task4_queries.sql`.
   - Captured **screenshots** of queries and results.
   - Summarized findings in this README.

---

## 📂 Dataset
The **olist.sqlite** database contains:
- `orders` — Order details (ID, customer ID, timestamps, status)
- `customers` — Customer details
- `order_items` — Items purchased in each order
- `products` — Product details (category, ID)
- `order_reviews` — Ratings & review scores
- `sellers` — Seller details
- `geolocation` — Location mapping
- `order_payments` — Payment details

---

## 🛠 Tools Used
- **SQLite** (via DB Browser for SQLite / VS Code SQLite Extension)
- **SQL Language** for queries
- **GitHub** for project submission
