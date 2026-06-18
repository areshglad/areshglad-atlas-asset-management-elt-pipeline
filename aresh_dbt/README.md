# Atlas Asset Management – Portfolio Risk & Performance Analytics

## Project Overview

Atlas Asset Management is an end-to-end investment portfolio analytics platform built using Python, Databricks, dbt, SQL, and Power BI.

The project simulates how an institutional asset management firm monitors portfolio performance, risk exposure, ESG compliance, concentration risk, and rebalancing opportunities across thousands of investment portfolios.

The solution implements a Medallion Architecture (Bronze, Silver, Gold) using dbt and Databricks to transform raw portfolio data into business-ready analytical models.

---

## Business Problem

Investment managers need to answer critical questions:

* Which portfolios are underperforming?
* Which portfolios require rebalancing?
* Which sectors contribute the most AUM?
* How does ESG performance compare across portfolios?
* Which portfolios generate the best risk-adjusted returns?

Traditional reporting often relies on manual spreadsheets and fragmented SQL queries.

This project centralizes portfolio analytics into a scalable ELT pipeline.

---

## Technology Stack

* Python
* Databricks
* dbt Core
* SQL
* Power BI
* Git & GitHub

---

## Data Pipeline Architecture

atlas_portfolio.csv
↓
Python Ingestion
↓
Databricks Raw Table
(aresh_dbt.default.atlas_portfolio)
↓
Bronze Layer
(bronze_atlas_portfolio)
↓
Silver Layer
(silver_atlas_portfolio)
↓
Gold Layer
├── gold_portfolio_performance
├── gold_rebalancing_candidates
├── gold_esg_analysis
└── gold_aum_summary
↓
Power BI Dashboard

---

## Medallion Architecture

### Bronze Layer

Purpose:

* Raw data ingestion
* Data lineage tracking
* Source system representation

Model:

* bronze_atlas_portfolio

---

### Silver Layer

Purpose:

* Data cleansing
* Standardization
* Type conversions
* Data quality validation

Model:

* silver_atlas_portfolio

---

### Gold Layer

Purpose:

Business-ready analytics models.

Models:

### gold_portfolio_performance

Tracks:

* Sharpe Ratio
* Alpha
* Beta
* ESG Score
* Performance Status

### gold_rebalancing_candidates

Identifies:

* High concentration risk portfolios
* Rebalancing opportunities
* Underperforming investments

### gold_esg_analysis

Evaluates:

* ESG scores
* Sustainability metrics
* ESG portfolio distribution

### gold_aum_summary

Summarizes:

* Assets Under Management (AUM)
* Fee Revenue
* Sector Allocation
* Regional Performance

---

## Power BI Dashboard

### Page 1

Executive Portfolio Overview

### Page 2

Risk & Performance Analytics

### Page 3

Rebalancing & Concentration Risk

### Page 4

ESG & Sustainable Investing

---

## Key Metrics

* Assets Under Management (AUM)
* Management Fee Revenue
* Sharpe Ratio
* Alpha
* Beta
* Information Ratio
* ESG Score
* Concentration Risk Score
* Active Return
* Benchmark Return

---

## Project Outcomes

* Built an end-to-end ELT analytics pipeline.
* Implemented Medallion Architecture using dbt.
* Created business-ready Gold analytical models.
* Developed institutional-style investment analytics dashboards.
* Enabled portfolio performance, risk, ESG, and rebalancing analysis.

---

## Future Enhancements

* Automated Databricks Workflows
* Incremental dbt Models
* Portfolio Value at Risk (VaR)
* Real-time Market Data Integration
* Advanced Portfolio Optimization Models

git add .
git commit -m "Added project documentation"
git push