# Atlas Asset Management ELT Pipeline

## Executive Summary

Atlas Asset Management ELT Pipeline is an end-to-end analytics engineering project designed to simulate how modern asset management firms process, transform, and analyze investment portfolio data.

The project leverages Databricks, dbt, SQL, and Power BI to build a production-style Medallion Architecture that transforms raw portfolio data into business-ready analytics for portfolio managers, risk analysts, and executive leadership.

---

## Business Problem

Asset management firms oversee thousands of portfolios across multiple asset classes, sectors, and investor segments.

To make informed investment decisions, firms must answer key business questions:

* Which portfolios generate the highest returns?
* Which portfolios have excessive risk exposure?
* Which portfolios require rebalancing?
* How diversified are client portfolios?
* How does performance compare against benchmarks?
* Which investors contribute the most Assets Under Management (AUM)?

Traditional spreadsheet-based reporting is difficult to scale and often lacks governance, reproducibility, and transparency.

This project demonstrates how modern analytics engineering practices can automate portfolio analytics workflows.

---

## Technology Stack

### Data Platform

* Databricks
* Delta Lake

### Analytics Engineering

* dbt Core
* Medallion Architecture

### Data Analysis

* SQL

### Business Intelligence

* Power BI

### Version Control

* Git
* GitHub

---

## Dataset Overview

### Records

10,000 Portfolio Records

### Portfolio Attributes

* Investor ID
* Portfolio ID
* Portfolio Type
* Investor Segment
* Asset Class
* Sector
* Country
* Investment Amount
* Current Value
* Market Value
* Annual Return
* Monthly Return
* Benchmark Return
* Active Return
* Volatility
* Beta
* Alpha
* Sharpe Ratio
* Information Ratio
* ESG Score
* Concentration Risk Score
* Rebalancing Needed Flag

---

## Medallion Architecture

### Bronze Layer

Raw portfolio data ingestion and standardization.

Purpose:

* Preserve source data
* Data quality validation
* Schema standardization

---

### Silver Layer

Business-ready transformations.

Purpose:

* Portfolio performance calculations
* Risk metric transformations
* Portfolio enrichment
* Analytical modeling

---

### Gold Layer

Executive reporting tables.

Purpose:

* Dashboard consumption
* KPI reporting
* Investment decision support
* Executive analytics

---

## Key Business Metrics

### Assets Under Management (AUM)

Total value of client assets managed by the firm.

### Sharpe Ratio

Measures risk-adjusted return.

### Alpha

Measures excess return generated relative to benchmark performance.

### Beta

Measures portfolio sensitivity to market movements.

### Active Return

Measures portfolio performance relative to benchmark indices.

### Volatility

Measures portfolio risk.

### ESG Score

Measures sustainability and governance performance.

### Concentration Risk Score

Measures diversification and concentration risk.

---

## Analytics Performed

### Portfolio Performance Analysis

* Return Analysis
* Benchmark Comparison
* Active Return Analysis

### Risk Analytics

* Volatility Analysis
* Sharpe Ratio Evaluation
* Concentration Risk Assessment

### Asset Allocation Analysis

* Asset Class Distribution
* Sector Exposure Analysis
* Geographic Allocation

### Portfolio Management

* Rebalancing Candidate Identification
* Underperforming Portfolio Detection
* Risk Segmentation

---

## Dashboard Highlights

### Executive Overview

* Assets Under Management
* Investor Segments
* Portfolio Distribution
* Fee Revenue

### Performance Analytics

* Portfolio Returns
* Benchmark Comparison
* Top Performing Portfolios

### Risk Analytics

* Volatility Analysis
* Sharpe Ratio Analysis
* Concentration Risk Assessment

### ESG & Rebalancing Analytics

* ESG Performance
* Rebalancing Opportunities
* Portfolio Optimization Insights

---

## Business Impact

This platform enables investment managers to:

* Improve portfolio monitoring
* Identify high-risk investments
* Enhance portfolio diversification
* Support rebalancing decisions
* Evaluate risk-adjusted performance
* Improve executive reporting

---

## Key Outcomes

* Built a production-style ELT pipeline using Databricks and dbt
* Implemented Medallion Architecture (Bronze, Silver, Gold)
* Automated portfolio analytics workflows
* Developed institutional-style investment reporting
* Delivered scalable analytics architecture for asset management use cases

---

## Author

**G Aresh**

MBA Candidate (2027)

Target Roles:


* Investment Analytics
* Portfolio Analytics
* Risk Analytics
* Financial Data Analytics
