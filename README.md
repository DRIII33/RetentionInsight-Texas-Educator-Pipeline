# **RetentionInsight:** Texas Educator Pipeline Analysis
---
#### **Data Analyst:** Daniel Rodriguez III
#### **Date:** June 22, 2026
---
## **Project Overview**
**RetentionInsight** is an end-to-end data engineering and causal analytics framework designed to model educator retention trends within the Texas Education Agency (TEA) policy context. This project serves as a professional demonstration of the complete data lifecycle—from synthetic data generation and ETL pipeline design to building actionable, audit-ready analytical dashboards.

## **Architecture**
The pipeline follows a robust, industry-standard lifecycle:
1. **Ingestion & Staging:** Python (Colab) generates synthetic datasets mirroring state-level HR/Survey systems.
2. **Data Warehouse:** BigQuery acts as the centralized repository, enforcing data integrity and modular SQL transformations.
3. **Analytics & Visualization:** Looker Studio provides the executive reporting layer, featuring a 3-tier sentiment segmentation model to identify retention risks.

## **Repository Structure**
- `/sql/`: Contains all DDL (Schema) and DML (Transformation/Analysis) queries.
- `/src/`: Python source code for data generation.
- `/docs/`: Architectural documentation and methodology.
- `/assets/`: Dashboard previews and visual reports.

---

## **Disclaimer**
This project is an independent academic simulation intended solely to demonstrate technical proficiency in data architecture and analytics. All data is synthetic; it does not contain real agency information, nor does it represent official findings of the Texas Education Agency.
