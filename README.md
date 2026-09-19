# Insurance Claims Billing Analysis

SQL and Tableau analysis of insurance claims data, modeled on real-world 
billing and insurance coordination workflows at a mental health practice. 
The dataset is fully synthetic (no real patient or employer data) but 
mirrors realistic payer mix, CPT codes, denial rates, and payment timelines.

**[View the interactive Tableau dashboard →](https://public.tableau.com/app/profile/saarym.shafiq/viz/InsuranceClaimsBillingAnalysis/InsuranceClaimsBillingDashboard)**

## What's in this repo

- `claims_analysis.sql` — three SQL queries analyzing denial rates, 
  payment timelines, and denial reasons across 10 insurance payers

## Key findings

- **Prior authorization requirements** were the leading cause of claim 
  denials, ahead of eligibility issues and coordination-of-benefits problems
- Denial rates varied significantly by payer, from under 5% to nearly 20%
- Average time-to-payment also varied by payer, with the slowest payers 
  taking over a week longer than the fastest

## Tools used

- **SQL** (SQLite) — data querying and aggregation
- **Tableau Public** — interactive dashboard and visualization

## About the data

This dataset was synthetically generated to mirror the structure and 
patterns of real insurance billing data (payer names, CPT codes 90791/90837, 
denial reasons, payment timelines) without using any actual patient records 
or protected health information (PHI).
