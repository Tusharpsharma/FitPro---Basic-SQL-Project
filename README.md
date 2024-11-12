# FitPro - Gym Basic SQL Project

![Project Image Placeholder](https://github.com/Tusharpsharma/FitPro---Basic-SQL-Project/blob/main/Fitpro_logo%5B1%5D.png) 

Welcome to my first SQL project, where I analyze real-time gym data from **FitPro Gym**! This project uses a dataset of **10,000 visit records** to explore and analyze gym membership and visit data, answering key business questions that can help a fitness center understand its customer base better and optimize its services.

## Table of Contents
- [Introduction](#introduction)
- [Project Structure](#project-structure)
- [Database Schema](#database-schema)
- [Business Problems](#business-problems)
- [SQL Queries & Analysis](#sql-queries--analysis)
- [Getting Started](#getting-started)
- [Questions & Feedback](#questions--feedback)
- [Contact Me](#contact-me)

---

## Introduction

This project aims to demonstrate essential SQL skills by analyzing a dataset from FitPro Gym. Using SQL, I explored membership details, member demographics, and visit patterns to derive actionable insights. This project showcases fundamental SQL techniques, including creating tables, writing queries, and analyzing data.

## Project Structure

1. **SQL Scripts**: Code to create the database schema and queries for analysis.
2. **Dataset**: Real-time data on gym visits, membership, and member demographics.
3. **Analysis**: SQL queries solving practical business problems, each one crafted to address specific questions.

---

## Database Schema

Here’s an overview of the database structure:

### 1. **Members Table**
- **member_id**: Unique identifier for each member
- **name**: Name of the member

### 2. **Memberships Table**
- **member_id**: Unique identifier linked to the `members` table
- **age**: Age of the member
- **gender**: Gender of the member ('M' or 'F')
- **membership_type**: Type of membership (e.g., Monthly, Quarterly)
- **join_date**: Date when the member joined
- **status**: Membership status (e.g., Active, Cancelled)

### 3. **Visits Table**
- **visit_id**: Unique identifier for each visit
- **member_id**: Linked to the `members` table
- **visit_date**: Date of the visit
- **check_in_time**: Check-in time of the visit
- **check_out_time**: Check-out time of the visit

## Business Problems

The following queries were created to solve specific business questions. Each query is designed to provide insights based on gym membership and visit data.

	Retrieve all details of members who have a Cancelled membership.
	Find all members who are Male and have a Weekly membership type, and order the result by join_date.
	Get a list of distinct member ages.
	Retrieve the name, membership_type, and join_date of all members who joined after 2023-10-01, ordered by join_date in ascending order.
	Count the total number of visits made by each member, grouping by member_id.
	Retrieve the membership_type and the count of members for each membership type.
	Get the names and ages of members who have a Monthly membership and are younger than 25, using WHERE.
	Retrieve the number of visits for each visit_date, ordered by visit_date.
	Find the average age of members who have a Quarterly membership type.
	Retrieve the name, membership_type, and status of members who are Active and Monthly, ordered by status.
	Count the number of members with each membership_type, using GROUP BY and HAVING to show only those with more than 1 member.
	Find the name of the member who has made the most visits, ordered by total_visits.
	Retrieve the list of name and status of members who have Cancelled status and joined before 2023-11-01, and limit the result to 3 rows.
	Find the average age of members with Active status, grouped by membership_type.
	Retrieve all visit details (date, check-in, check-out) for the first 5 visits, ordered by visit_date in descending order.



---

## SQL Queries & Analysis

The `analysis.sql` file contains all SQL queries developed for this project. Each query corresponds to a business problem and demonstrates skills in SQL syntax, data filtering, aggregation, grouping, and ordering.

## Getting Started

### Prerequisites
- PostgreSQL (or any SQL-compatible database)
- Basic understanding of SQL

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/fitpro-gym-sql-project.git
   ```
2. **Set Up the Database**:
   - Run the `schema.sql` script to set up tables and insert sample data.

3. **Run Queries**:
   - Execute each query in `analysis.sql` to explore and analyze the data.

---

## Questions & Feedback

If you have any questions or feedback, feel free to create an issue or reach out!

---

## Contact Me

📄 **[Resume](#)**  
📧 **[Email] [sharma.tushar447@gmail.com]**  
📞 **Phone**: *****

--
