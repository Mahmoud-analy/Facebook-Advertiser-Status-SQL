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
- ## 📝 التخطيط المنطقي للربط بين الجداول (SQL Join & Coalesce Logic)

قبل كتابة استعلامات السيكوال، قمت برسم وتخطيط آلية دمج الجداول منطقياً على الورق لضمان معالجة القيم الفارغة (`Null values`) واختبار أنواع الـ Joins المختلفة:

* **Left Join**: لربط جدول الإعلانات بجدول المدفوعات مع الحفاظ على كافة المستخدمين.
* **Coalesce Function**: لتنظيف وتحسين عرض البيانات من خلال دمج الأعمدة واستبدال القيم الفارغة.
* **Full Outer Join**: لضمان دمج كامل البيانات من الطرفين وتحديد المستخدمين الجدد وحالات المغادرة (`Churn`).

sql-join-logic.jpg.jpeg
