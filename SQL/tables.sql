-- SQLite
-- fichier : create_tables.sql

-- ----- 1. Suppliers -----
CREATE TABLE suppliers (
    supplier_id INTEGER PRIMARY KEY,
    supplier_name TEXT NOT NULL,
    avg_lead_time INTEGER NOT NULL,
    reliability_score REAL NOT NULL
);

-- ----- 2. Products -----
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    category TEXT NOT NULL,
    supplier_id INTEGER NOT NULL,
    unit_cost REAL NOT NULL,
    lead_time_days INTEGER NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

-- ----- 3. Inventory -----
CREATE TABLE inventory (
    product_id INTEGER PRIMARY KEY,
    current_stock INTEGER NOT NULL,
    reorder_point INTEGER NOT NULL,
    last_update DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ----- 4. Sales -----
CREATE TABLE sales (
    sale_id INTEGER PRIMARY KEY,
    product_id INTEGER NOT NULL,
    sale_date DATE NOT NULL,
    quantity_sold INTEGER NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);
