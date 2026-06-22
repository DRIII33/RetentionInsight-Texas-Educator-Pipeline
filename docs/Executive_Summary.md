# Executive Summary: Project RetentionInsight
---
#### **Data Analyst:** Daniel Rodriguez III 
#### **Date:** June 22, 2026
---

## Business Scenario & Problem

The Texas educator workforce faces complex attrition challenges that are often masked by aggregate data. The Texas PREP Allotment mandate requires evidence-based monitoring to ensure funding interventions improve retention.

The core problem is that state agencies often struggle to bridge the gap between **longitudinal headcount** ("Who left?") and **qualitative sentiment** ("Why did they leave?"), resulting in broad retention programs that may fail to address district-level root causes.

---

## Methodology

This project employs a **Three-Layer Analytical Framework**:

### 1. The Longitudinal Layer
Establishes attrition funnels using employment and certification records to identify the timing and magnitude of educator turnover.

### 2. The Sentiment Correlation Layer
Overlays multi-dimensional survey data to classify educators into:

- Satisfied
- Neutral
- Detractor

This approach mitigates the "masking effect" commonly produced by simple averages and allows underlying dissatisfaction to be identified.

### 3. The Strategic Layer
Identifies district-level retention hotspots by calculating the distance-to-goal (**Target Gap**) to support prioritized and localized intervention planning.

---

## End-to-End Workflow

### ETL Engineering
Utilized Python and Pandas to simulate, cleanse, transform, and standardize disparate HR and educator survey datasets.

### Warehouse Governance
Implemented BigQuery views with CASE WHEN logic to standardize sentiment classifications and maintain consistent reporting-layer data contracts.

### Causal Analytics
Performed correlation analysis using CORR() functions to evaluate relationships between sentiment dimensions and retention outcomes, validating that a three-tier risk model provides stronger predictive signal than binary classifications.

### Business Intelligence
Designed and deployed a Looker Studio dashboard that translates raw educational workforce data into executive-level KPIs, retention diagnostics, and actionable insights.
