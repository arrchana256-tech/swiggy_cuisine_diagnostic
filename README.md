# Swiggy Cuisine Revenue Capstone

## Project Overview

This project analyzes Swiggy cuisine revenue and delivered orders for January to June 2026.

The project uses SQL, Excel, and Tableau to provide different views of the same data.

- SQL is used for data foundations, joins, aggregations, and reporting.
- Excel is used for revenue summaries, targets, variance analysis, and pivot tables.
- Tableau is used to create KPIs, charts, filters, and the final dashboard.

## Project Files

| File | Purpose |
|---|---|
| `monthly_cuisine_revenue.csv` | Main source dataset |
| `generate_data.py` | Python script used to generate the source data |
| `swiggy_capstone.db` | SQLite database |
| `01_foundations.sql` | SQL foundations tasks |
| `02_aggregation_joins.sql` | SQL aggregation and join tasks |
| `03_reporting.sql` | SQL reporting tasks |
| `verify.sql` | SQL verification checks |
| `swiggy_part_b.xlsx` | Excel analysis and Part B work |
| `swiggy_capstone.twbx` | Tableau Public workbook |
| `Data_story.md` | Tableau data story and recommendations |
| `ai_log.md` | Record of AI-assisted work and verification |

## How to Regenerate the Database

The source data is stored in:

`monthly_cuisine_revenue.csv`

The database can be regenerated using:

`generate_data.py`

The generated SQLite database is:

`swiggy_capstone.db`

## SQL Tasks

The SQL work is divided into three stages:

1. `01_foundations.sql` — basic SQL foundations.
2. `02_aggregation_joins.sql` — aggregations and joins.
3. `03_reporting.sql` — reporting and analysis.

`verify.sql` contains verification queries used to check the results.

## Excel Analysis

The Excel analysis is stored in:

`swiggy_part_b.xlsx`

It contains the required Part B analysis, including revenue summaries, targets, variance calculations, and pivot-table work.

## Tableau Dashboard

The Tableau workbook is:

`swiggy_capstone.twbx`

The dashboard connects to the monthly cuisine revenue data and contains:

- Monthly revenue trend
- Cuisine revenue comparison
- Total Revenue KPI
- Total Delivered Orders KPI
- Average Order Value KPI
- Cuisines Meeting Target KPI
- Dashboard filtering

### Live Tableau Link

Paste the published Tableau Public dashboard link here after publishing:

https://public.tableau.com/app/profile/archana.senthilnath/viz/swiggy_capstone/SwiggyRevenueDashboard

## Data Story

The written interpretation and recommendations are stored in:

`Data_story.md`

The data story is based on the revenue and target results from the project.

## AI Assistance

AI-assisted work and verification steps are recorded in:

`ai_log.md`

The AI log documents the prompts, context, tasks, constraints, and verification performed during the project.