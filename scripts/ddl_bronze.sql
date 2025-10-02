/*
====================================================================
🏗️ Bronze Layer Initialization Script
📦 Project: Unified Enterprise Data Warehouse
📚 Layer: Bronze (Raw Data Ingestion)
🛠️ Purpose: Drop and recreate foundational raw data tables
📅 Last Updated: 2025-10-02
👨‍💻 Author: [Your Name]
====================================================================
*/

-- =============================================================
-- 🧨 Drop Existing Tables (if any)
-- =============================================================
DROP TABLE IF EXISTS bronze.crm_customer_info;
DROP TABLE IF EXISTS bronze.crm_product_info;
DROP TABLE IF EXISTS bronze.crm_sales_transactions;
DROP TABLE IF EXISTS bronze.erp_customer_registry;
DROP TABLE IF EXISTS bronze.erp_location_directory;
DROP TABLE IF EXISTS bronze.erp_pricing_catalog;

-- =============================================================
-- 🏗️ Create Bronze Layer Tables
-- =============================================================

-- 👤 CRM Customer Information
CREATE TABLE IF NOT EXISTS bronze.crm_customer_info (
    customer_id         INT,
    customer_key        VARCHAR(50),
    first_name          VARCHAR(50),
    last_name           VARCHAR(50),
    marital_status      VARCHAR(50),
    gender              VARCHAR(50),
    created_date        DATE
);

-- 📦 CRM Product Information
CREATE TABLE IF NOT EXISTS bronze.crm_product_info (
    product_id          INT,
    product_key         VARCHAR(50),
    product_name        VARCHAR(50),
    product_cost        INT,
    product_line        VARCHAR(50),
    start_date          DATE,
    end_date            DATE
);

-- 💰 CRM Sales Transactions
CREATE TABLE IF NOT EXISTS bronze.crm_sales_transactions (
    order_number        VARCHAR(50),
    product_key         VARCHAR(50),
    customer_id         INT,
    order_date          INT,
    ship_date           INT,
    due_date            INT,
    sales_amount        INT,
    quantity            INT,
    unit_price          INT
);

-- 🧍 ERP Customer Registry
CREATE TABLE IF NOT EXISTS bronze.erp_customer_registry (
    customer_code       VARCHAR(50),
    birth_date          DATE,
    gender              VARCHAR(50)
);

-- 🌍 ERP Location Directory
CREATE TABLE IF NOT EXISTS bronze.erp_location_directory (
    customer_code       VARCHAR(50),
    country             VARCHAR(50)
);

-- 🛠️ ERP Pricing Catalog
CREATE TABLE IF NOT EXISTS bronze.erp_pricing_catalog (
    catalog_id          VARCHAR(50),
    category            VARCHAR(50),
    subcategory         VARCHAR(50),
    maintenance_flag    VARCHAR(50)
);

-- =============================================================
-- ✅ Status: Bronze Layer Initialized Successfully
-- 📌 Next Step: Begin data ingestion from source systems
-- =============================================================
