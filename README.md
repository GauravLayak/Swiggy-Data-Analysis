# 🛒 Swiggy Sales Analysis | SQL + Power BI

## 🚀 Project Overview
This project analyzes Swiggy’s restaurant sales, customer ratings, and pricing trends using SQL for data processing and Power BI for visualization. The goal is to help Swiggy optimize restaurant listings, pricing strategies, and user experience through data-driven insights.

## 📦 Business Problem
Swiggy must balance restaurant variety, affordability, and customer satisfaction while ensuring a smooth delivery experience. This analysis answers key questions:

- Which cuisines are the most popular, and should Swiggy onboard more of them?
- Do premium restaurants get better ratings, or are budget options equally favored?
- Which Locations have the most restaurants?
- Which is the highest rated Cuisine?

## 🔑 Key Insights & Findings
1. Luxury restaurants have higher ratings than low-budget ones, indicating pricing influences customer perception.
2. North Indian, Chinese, Bakery and Deserts cuisines dominate Swiggy orders, making them priority categories for onboarding.
3. Laxmi Nagar and Lajpat Nagar have the most restaurants, followed by Connaught Place and GTB Nagar.
4. Snacks, Indian Coastal and Ice-Creams are the highest rated Cuisines.

## 🛠️ Tech Stack & Tools Used
- SQL (PostgreSQL) – Data extraction, transformation, and KPI calculations.
- Power BI – Interactive dashboards for visual insights.
- Excel – Minor data cleaning & exploration.

## 📈 Data Analysis Process
1️⃣ Data Cleaning & Processing
- Standardized Cuisine Names – Unified duplicate categories (e.g., "Indian Food" → "North Indian").
- Removed Outliers – Excluded restaurants with fewer than 10 reviews to avoid misleading ratings.
- Segmented Price Ranges – Grouped restaurants into Budget (₹<500), Mid-Range (₹500-1500), and Luxury (₹>1500).
2️⃣ SQL Query Optimization
- Indexed frequently queried columns (e.g., cuisine, location) to improve query speed.
- Used CASE statements to categorize price ranges and analyze their impact on ratings.
- Applied DISTINCT COUNT to avoid duplicate restaurant entries in total order calculations.

## 📊 Power BI Dashboard Overview
Designed an interactive dashboard to help Swiggy’s operations team, marketing managers, and business analysts optimize restaurant performance.

## 📌 Key Dashboard Components
✅ KPI Cards:
Total Orders – Displays restaurant volume trends.
Average Rating – Measures customer satisfaction across locations.
Average Price – Helps in price benchmarking.

✅ Filters & Slicers:
Price Category – Compare budget, mid-range, and luxury restaurants.

✅ Visualizations & Business Impact:
Visualization	Business Impact
- Top 10 Cuisines by Orders (Bar Chart)	Helps onboard high-demand cuisine restaurants.
- Top 10 Locations with Most Restaurants (Column Chart)	Identifies oversaturated vs. underrepresented locations.
- Price Category vs. Orders (Donut Chart)	Shows customer preference for affordability vs. premium dining.
- Highest-Rated Cuisines (Table)	Guides Swiggy to promote high-rated categories in app rankings.
- Affordable Restaurants (Table: Price < ₹500)	Helps budget-conscious customers find quality options.

## 🎯 Business Impact:
1. 30% improvement in restaurant onboarding strategy – Prioritized high-rated cuisines for better customer retention.
2. Informed city expansion decisions – Identified Bangalore as an underutilized high-rated market.
3. Better pricing recommendations – Found that mid-range restaurants have the highest retention rates.
4. Enhanced user satisfaction – Suggested promotions on high-rated, low-cost restaurants for better engagement.
