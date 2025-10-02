/*
===============================================================
🗄️ Data Warehouse Initialization Script
📦 Project: Simple Data WareHouse
🛠️ Purpose: Set up foundational schemas for multi-layered data architecture
📅 Created: 2025-10-02
👨‍💻 Author: Bhanu Pratap Saini 
===============================================================
*/

-- =============================================================
-- 🎯 Step 1: Create the Data Warehouse Database
-- =============================================================
-- Uncomment the line below if the database doesn't exist yet
-- CREATE DATABASE DataWareHouse;

-- Switch to the newly created database
-- USE DataWareHouse;

-- =============================================================
-- 🏗️ Step 2: Create Layered Schemas
-- =============================================================

-- 🔹 Bronze Layer: Raw, unprocessed data from source systems
CREATE SCHEMA IF NOT EXISTS bronze;

-- 🔸 Silver Layer: Cleaned, filtered, and enriched data
CREATE SCHEMA IF NOT EXISTS silver;

-- 🥇 Gold Layer: Aggregated, business-ready data for reporting and analytics
CREATE SCHEMA IF NOT EXISTS gold;

-- =============================================================
-- 📌 Notes:
-- - This layered approach enables scalable, modular data processing.
-- - Each schema will contain tables, views, and procedures specific to its role.
-- - Future enhancements may include schema-level permissions and audit logging.
-- =============================================================

/*
📚 Reference Architecture:
    ┌────────────┐
    │  Bronze    │ ← Raw ingestion (CSV, JSON, APIs)
    └────────────┘
           ↓
    ┌────────────┐
    │  Silver    │ ← Cleansed, deduplicated, normalized
    └────────────┘
           ↓
    ┌────────────┐
    │   Gold     │ ← KPIs, dashboards, business logic
    └────────────┘

🔐 Security Tip:
    Assign roles and privileges per schema to enforce data governance.

📈 Performance Tip:
    Use partitioning and indexing in Gold layer for faster analytics.
*/

-- ✅ Initialization Complete
-- You’re now ready to start building your data models!
