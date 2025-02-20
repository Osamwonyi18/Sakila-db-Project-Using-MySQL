# 🎬 **MySQL Assignment – Sakila Database**

📌 This project showcases **SQL queries** executed on the **`sakila`** database, answering various **business and entertainment-related questions**. It demonstrates **SQL knowledge and skills**, such as **JOINs, aggregations, filtering with wildcards, and Case Statements** to analyze **actors, films, payments, and customers** effectively.

## 🔎 **Some of the queries I executed include:**
✅ Staff payment analysis using `JOIN`\
✅ Finding the most frequent actor surname using `GROUP BY`\
✅ Listing the total amount paid by each customer using `SUM`\
✅ Implementing a Case Statement to Categorise Films Based on Rental Duration

---

## 🛠️ **Tech Stack**

**MySQL** 🐄️

---

## 📂 **SQL Queries & Techniques Used**

### 🔹 **1️⃣ Using `JOIN` for Staff Payment Analysis**

✅ **Objective:** Return the total amount received by each staff member in **August 2005**.\
✅ **Technique:** `INNER JOIN` links **staff and payment tables**, while `SUM` aggregates total payments.

![image](https://github.com/user-attachments/assets/990d05b6-d7b6-420b-90e8-66091e3ef6f0)


---

### 🔹 **2️⃣ Using `GROUP BY` to Find the Most Frequent Actor Surname**

✅ **Objective:** Identify the **most common last name** among actors.\
✅ **Technique:** `GROUP BY` aggregates similar last names, and `ORDER BY` ranks them.

![image](https://github.com/user-attachments/assets/6f8d698b-3fa6-4806-a6c8-d3b38cbed7fb)


---

### 🔹 **3️⃣ Using `SUM` to List Total Payments per Customer**

✅ **Objective:** Display the **total amount paid** by each customer.\
✅ **Technique:** `JOIN` links customer and payment tables, `SUM` aggregates their total payments.

![image](https://github.com/user-attachments/assets/f3e4e7f2-9660-4e04-8aa8-f39d25319dd9)


---

### 🔹 ** 4 Categorizing Films Based on Rental Duration

### **Task Description**
A video rental store using the **Sakila** database wants to analyze its **film rental durations** to better understand how long customers typically rent movies. They need a report that **categorizes each film** into three groups based on its rental duration:  

1. **Short-Term Rentals** – Films rented for **3 days or less**  
2. **Medium-Term Rentals** – Films rented for **4 to 6 days**  
3. **Long-Term Rentals** – Films rented for **more than 6 days**  

This classification will help the store **optimize pricing, recommend rental periods, and identify trends** in movie rentals.



![image](https://github.com/user-attachments/assets/b048f1b8-cab8-48d8-9aeb-f065bcfbec05)


---

## 🚀 **How to Run These Queries**

1️⃣ Download the attached SQL data file.

2️⃣ Open MySQL Workbench (or any SQL tool) and import the file into your database.

3️⃣ Select the world database and execute the provided queries.

USE world;

4️⃣ Run the SQL queries in the provided file.

---

## ⚠️ **Challenges Faced & Solutions**

🔸 **Duplicate customer names in results:**\
✔ **Solution:** Used `GROUP BY customer_id` to ensure unique entries.

🔸 **Sorting total payments incorrectly:**\
✔ **Solution:** Used `ORDER BY SUM(amount) DESC` for correct ranking.

🔸 **Finding the most common actor surname efficiently:**\
✔ **Solution:** Used `COUNT(*)` and `ORDER BY Frequency DESC LIMIT 1`.

---

## 📚 **References & Further Reading**

📚 [MySQL Documentation](https://dev.mysql.com/doc/)\
🏫 [W3Schools SQL Tutorial](https://www.w3schools.com/sql/)\
📝 [SQL Practice Exercises](https://www.sql-practice.com/)

---

