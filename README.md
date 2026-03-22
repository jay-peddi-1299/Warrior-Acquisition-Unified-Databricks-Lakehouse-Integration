# Warrior Acquisition: Unified Databricks Lakehouse Integration

## Project Overview
**Sports Direct** recently acquired **Warrior**, a fast-growing startup, but the integration faced a major roadblock: data fragmentation. Warrior’s sales and inventory data were scattered across disparate spreadsheets, cloud drives, and APIs, leading to inconsistent metrics and conflicting financial reports. 

To resolve this, the engineering team built a scalable **Data Lakehouse on Databricks** to consolidate all legacy and real-time information into a single source of truth. This architecture eliminates reporting conflicts and provides the executive team with the reliable, aggregated analytics needed for strategic decision-making.

## Solution Architecture
The architecture follows a Medallion pattern, ingesting raw data from Warrior's S3 bucket and transforming it through Bronze, Silver, and Gold layers within the Databricks Lakehouse.

![Solution Architecture](https://github.com/jay-peddi-1299/Warrior-Acquisition-Unified-Databricks-Lakehouse-Integration/blob/main/04-images/solution-architecture.png)

*Figure 1: High-level data flow from Warrior Data Sources to the Unified Analytics Dashboard.*

## Automated Data Pipeline
The ingestion process is managed via **Databricks Workflows**. The pipeline handles parallel ingestion of dimensions—including Customer, Product, and Price data—before processing the core order facts.

![Pipeline Run Status](https://github.com/jay-peddi-1299/Warrior-Acquisition-Unified-Databricks-Lakehouse-Integration/blob/main/04-images/pipeline-run-status.png)

*Figure 2: Successful execution of the `sportsdirect_warrior_acquisition_pipeline` job on March 19, 2026.*

## Unified Executive Dashboard
The final "Gold" layer feeds into a high-visibility Sales Performance Dashboard, providing real-time insights into total revenue, units sold, and top-performing products across the combined organization.

![Unified Sales Dashboard](https://github.com/jay-peddi-1299/Warrior-Acquisition-Unified-Databricks-Lakehouse-Integration/blob/main/04-images/sample-dashboard.png)

*Figure 3: The executive dashboard displaying **119.93B in Total Revenue** and identifying "PX Grip Cricket Batting Gloves" as a top product.*

## Ad-hoc Analysis with Databricks Genie
Stakeholders can now use Databricks Genie to query the unified dataset using natural language. This tool translates business questions into optimized SQL queries, executes them, and provides answers in both text and visuals.

![Genie Ad-hoc Space](https://github.com/jay-peddi-1299/Warrior-Acquisition-Unified-Databricks-Lakehouse-Integration/blob/main/04-images/genie-sample-query-result.png)

*Figure 4: Genie answering a request for the top 5 products by revenue in the 'Retail' channel for India during Q4 2025, identifying "RX Sprint Football Boots" as the lead product.*
