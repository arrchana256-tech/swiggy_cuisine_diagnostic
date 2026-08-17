# AI Log
----PART A
## Role
Act as a SQL expert who helps write and verify SQL queries.

## Context
I am working on a Swiggy Capstone project using DB Browser SQLite. The database contains restaurant, customer, order, and cuisine target tables.

## Task
Help me write a SQL query for the Monthly Business Report that shows cuisine, month, number of orders, total revenue, and average revenue for delivered orders.

## Constraints
The query must work in  DB Browser SQLite, use only the existing project tables, and include only delivered orders.

## Format
Provide the SQL query with a brief explanation.

## Verification
I verified the AI's answer by running the SQL query in DB Browser for SQLite and checking the output columns and several rows to confirm that only Delivered orders were included and that the cuisine, month, order_count, total_revenue, and avg_revenue values were produced correctly.


---PART C

## AI-Assisted Prompt #2 — Tableau KPI

### Role
Act as a Tableau analyst helping me build a dashboard for a cuisine revenue analysis project.

### Context
I have a CSV containing monthly cuisine revenue and order-count data. I also have six fixed revenue targets, one for each cuisine. My Tableau dashboard needs a KPI called "Cuisines Meeting Target" that shows the number of cuisines whose total revenue is at least their individual target.

### Task
Help me create a Tableau calculated field that correctly counts the cuisines meeting their individual revenue targets. The calculation should evaluate total revenue separately for each cuisine and compare it with that cuisine's fixed target.

### Constraints
Do not change the existing Status calculation used by the cuisine revenue chart. The KPI should return one number and should not require manual counting.

### Format
Give me a Tableau calculated field and explain briefly why it works.

### Verification
I tested the calculated field in Tableau and verified that the KPI returned 3 cuisines meeting target. I also checked the result against the Part B Cuisine Summary, where Italian, North Indian, and South Indian were marked as above target.


