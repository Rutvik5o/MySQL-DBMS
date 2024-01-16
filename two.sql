-- Table creation with constraints
CREATE TABLE PRODUCT (
    p_id INT PRIMARY KEY,
    p_name VARCHAR(255) NOT NULL,
    p_price DECIMAL(10, 2),
    mfgdt DATE,
    p_qty INT CHECK (p_qty > 10),
    p_type VARCHAR(50) CHECK (p_type IN ('food', 'stationery', 'electronics')),
    v_id INT,
    FOREIGN KEY (v_id) REFERENCES VENDOR(v_id)
);

CREATE TABLE VENDOR (
    v_id INT PRIMARY KEY,
    v_name VARCHAR(255) NOT NULL
);

-- Inserting records
INSERT INTO PRODUCT VALUES (1, 'Product1', 100.00, '2023-01-01', 15, 'food', 1);
INSERT INTO PRODUCT VALUES (2, 'Product2', 200.00, '2023-02-01', 20, 'stationery', 2);
-- Add more records as needed

INSERT INTO VENDOR VALUES (1, 'Vendor1');
INSERT INTO VENDOR VALUES (2, 'Vendor2');
-- Add more records as needed

-- Queries
1. SELECT * FROM PRODUCT;
   SELECT * FROM VENDOR;

2. UPDATE PRODUCT SET p_type = 'Stationery_item' WHERE p_type = 'stationery';

3. SELECT p_name, p_price, v_id FROM PRODUCT;

4. DELETE FROM PRODUCT WHERE p_id = 2;

5. UPDATE PRODUCT SET p_price = 500 WHERE p_id = 1;

-- Saving changes is automatic for most databases, but if you want to commit explicitly, use COMMIT; statement.
