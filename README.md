# Warrior Acquisition: Unified Databricks Lakehouse Integration

## Project Overview
**Sports Direct** recently acquired **Warrior**, a fast-growing startup, but the integration faces a major roadblock: data fragmentation. Warrior’s sales and inventory data are currently scattered across disparate spreadsheets, cloud drives, and various APIs, leading to inconsistent metrics and conflicting financial reports. This "data friction" prevents leadership from getting an accurate, unified view of the brand’s performance within the larger corporate portfolio.

To resolve this, the engineering team is building a scalable **Data Lakehouse on Databricks** to consolidate all legacy and real-time information into a single source of truth. The project involves performing a historical backfill of five months of Warrior’s data and establishing an automated incremental load process starting **December 2025**. This architecture will eliminate reporting conflicts and provide the executive team with the reliable, aggregated analytics needed for strategic decision-making.

## Solution Architecture
The following diagram illustrates the data flow from Warrior’s raw S3 buckets through the Medallion architecture (Bronze, Silver, Gold) and into the unified Sports Direct Unity Catalog.

![Warrior Acquisition Solution Architecture](https://github.com/jay-peddi-1299/Warrior-Acquisition-Unified-Databricks-Lakehouse-Integration/blob/main/images/solution-architecture.png)
