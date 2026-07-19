# Facebook Advertiser Status Update (SQL)

### 📝 Project Description
A SQL solution to update and classify the loyalty/activity status of Facebook advertisers daily based on their recent payment activity.

### 📊 Business Logic (Status Transitions)
- **CHURN**: Did not make a payment today (regardless of previous status).
- **RESURRECT**: Was previously `CHURN` and made a payment today.
- **NEW**: Newly registered advertiser making their first payment today.
- **EXISTING**: Was `NEW`, `EXISTING`, or `RESURRECT` and made a payment today.

### 💻 Tech Stack
- PostgreSQL (Full Outer Join, Coalesce, Case Statements)
