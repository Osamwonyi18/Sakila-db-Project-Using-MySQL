# 🎬 **MySQL Assignment – Sakila Database**

📌 This project showcases **SQL queries** executed on the **`sakila`** database, answering various **business and entertainment-related questions**. It demonstrates **advanced MySQL techniques**, such as **JOINs, aggregations, filtering with wildcards, and subqueries** to analyze **actors, films, payments, and customers** effectively.

🔎 **Key Topics Covered:**\
✅ Staff payment analysis using `JOIN`\
✅ Finding the most frequent actor surname using `GROUP BY`\
✅ Listing the total amount paid by each customer using `SUM`\
✅ Identifying the film with the most actors using `JOIN` and `COUNT`

---

## 🛠️ **Tech Stack**

**MySQL** 🐄️

---

## 📂 **SQL Queries & Techniques Used**

### 🔹 **1️⃣ Using `JOIN` for Staff Payment Analysis**

✅ **Objective:** Display the total amount received by each staff member in **August 2005**.\
✅ **Technique:** `INNER JOIN` links **staff and payment tables**, while `SUM` aggregates total payments.

```sql
SELECT s.first_name, s.last_name, SUM(p.amount) AS Total_Revenue  
FROM sakila.staff AS s  
JOIN sakila.payment AS p  
ON s.staff_id = p.staff_id  
WHERE DATE_FORMAT(p.payment_date, '%M %Y') = 'August 2005'  
GROUP BY s.staff_id;
```
🎨 *Image Placeholder:*\
`![JOIN Example](https://via.placeholder.com/600x300?text=Staff+Payment+Analysis)`

---

### 🔹 **2️⃣ Using `GROUP BY` to Find the Most Frequent Actor Surname**

✅ **Objective:** Identify the **most common last name** among actors.\
✅ **Technique:** `GROUP BY` aggregates similar last names, and `ORDER BY` ranks them.

```sql
SELECT last_name, COUNT(*) AS Frequency  
FROM sakila.actor  
GROUP BY last_name  
ORDER BY Frequency DESC  
LIMIT 1;
```
🎨 *Image Placeholder:*\
`![Group By Example](https://via.placeholder.com/600x300?text=Most+Common+Actor+Surname)`

---

### 🔹 **3️⃣ Using `SUM` to List Total Payments per Customer**

✅ **Objective:** Display the **total amount paid** by each customer.\
✅ **Technique:** `JOIN` links customer and payment tables, `SUM` aggregates their total payments.

```sql
SELECT c.first_name, c.last_name, SUM(p.amount) AS Total_Payment  
FROM sakila.customer AS c  
JOIN sakila.payment AS p  
ON c.customer_id = p.customer_id  
GROUP BY c.customer_id  
ORDER BY c.last_name;
```
🎨 *Image Placeholder:*\
`![SUM Example](https://via.placeholder.com/600x300?text=Total+Payments+Per+Customer)`

---

### 🔹 **4️⃣ Using `JOIN` and `COUNT` to Find Films with the Most Actors**

✅ **Objective:** Identify **which film has the most actors**.\
✅ **Technique:** `JOIN` connects `film_actor` and `film`, `COUNT` counts the number of actors per film.

```sql
SELECT f.title, COUNT(fa.actor_id) AS No_of_Actors  
FROM sakila.film AS f  
JOIN sakila.film_actor AS fa  
ON f.film_id = fa.film_id  
GROUP BY f.title  
ORDER BY No_of_Actors DESC  
LIMIT 1;
```
🎨 *Image Placeholder:*\
`![Film Actors Count](https://via.placeholder.com/600x300?text=Film+With+Most+Actors)`

---

## 🚀 **How to Run These Queries**

1️⃣ **Clone the repository:**

```bash
git clone https://github.com/yourusername/mysql-sakila-assignment.git
```

2️⃣ **Open MySQL Workbench (or any SQL tool) and select the `sakila` database:**

```sql
USE sakila;
```

3️⃣ **Run the SQL queries in the provided file.**

---

## ⚠️ **Challenges Faced & Solutions**

🔸 **Duplicate customer names in results:**\
✔ **Solution:** Used `GROUP BY customer_id` to ensure unique entries.

🔸 **Sorting total payments incorrectly:**\
✔ **Solution:** Used `ORDER BY SUM(amount) DESC` for correct ranking.

🔸 **Finding the most common actor surname efficiently:**\
✔ **Solution:** Used `COUNT(*)` and `ORDER BY Frequency DESC LIMIT 1`.

---

## 🎯 **Key Learnings**

📈 **JOINs** are essential for linking related tables in databases.\
📈 **GROUP BY** allows effective aggregation of data.\
📈 **SUM** helps compute total payments for financial insights.\
📈 **ORDER BY** ensures correct ranking of results.

---

## 📚 **References & Further Reading**

📚 [MySQL Documentation](https://dev.mysql.com/doc/)\
🏫 [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)\
📝 [SQL Practice Exercises](https://www.sql-practice.com/)

---

### 🔥 **Why This Documentation Works?**

✅ **Focused on complex tasks**\
✅ **Well-organized sections for clarity**\
✅ **Visual placeholders for key concepts**

---

### 🚀 **Next Steps**

🔹 Add **more advanced SQL concepts** (e.g., stored procedures, window functions).\
🔹 Implement **performance optimizations** for large datasets.\
🔹 Enhance the project with **data visualizations**.

---

