# COVID-19 Global Data Analysis — SQL + Tableau

An end-to-end data analysis project exploring global COVID-19 case, death, and vaccination data using SQL Server and Tableau. Built to practice and demonstrate core SQL and data visualization skills on a real, messy, real-world dataset.

**Live Dashboard:** https://public.tableau.com/app/profile/mehek.wadhwani/viz/Covid-19GlobalDataDashboard_17869948156950/Dashboard1

![Dashboard Preview](dashboard-preview.png)

## Overview

Using two datasets (COVID deaths and COVID vaccinations, ~85K rows each, covering 200+ countries), this project answers questions like:

- What's the likelihood of dying if you contract COVID in a given country?
- What percentage of a country's population has been infected?
- Which countries/continents have the highest infection and death rates?
- How has vaccination rollout progressed over time, country by country?

## Skills Used

- Joins
- CTEs (Common Table Expressions)
- Temp Tables
- Window Functions (rolling sums with `OVER`/`PARTITION BY`)
- Aggregate Functions
- Views (for downstream visualization)
- Data type conversion / casting
- Data cleaning for visualization (handling nulls, locale-safe date formatting)

## Files

- `Covid_Portfolio_Project_Corrected.sql` — main data exploration script: cases vs. deaths, infection rates by population, death counts by continent, global numbers, and rolling vaccination totals via CTE, temp table, and view.
- `Tableau_Export_Queries.sql` — four focused summary queries used to feed the Tableau dashboard (global KPIs, deaths by continent, infection rate by country, infection rate by country over time).

## Tools

- SQL Server / SSMS for data cleaning and analysis
- Tableau Public for visualization and dashboarding

## Data Source

[Our World in Data](https://ourworldindata.org/covid-deaths) COVID-19 dataset
