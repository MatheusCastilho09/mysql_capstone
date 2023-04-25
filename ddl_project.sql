
SET SQL_SAFE_UPDATES = 0;

CREATE DATABASE test;

USE test;


CREATE TABLE clients (

    id_client INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    phone_number VARCHAR(15)
);
ALTER TABLE clients ADD COLUMN email VARCHAR(40);

CREATE TABLE employees (

    id_employee INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(40) NOT NULL,
    phone_number VARCHAR(15)NOT NULL,
    email VARCHAR(30) NOT NULL,
    salary INT NOT NULL,
    entry_date DATE NOT NULL,
    exit_date DATE
);

CREATE TABLE departments (

    id_department INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_employee INT NOT NULL,
    department_name VARCHAR(10),
    FOREIGN KEY (id_employee) REFERENCES employees(id_employee)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE management (

    id_manager INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_employee INT NOT NULL,
    id_department INT NOT NULL,
    FOREIGN KEY (id_department) REFERENCES departments(id_department)
    ON UPDATE CASCADE
    ON DELETE NO ACTION,
    FOREIGN KEY (id_employee) REFERENCES employees(id_employee)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE suppliers (

    id_supplier INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(40) NOT NULL,
    description TEXT,
    supplier_address VARCHAR(40)
);

CREATE TABLE feedstock (

    id_feedstock INT AUTO_INCREMENT PRIMARY KEY,
    id_supplier INT NOT NULL,
    feedstock_name VARCHAR(30),
    feedstock_price INT NOT NULL,
    feedstock_batch INT NOT NULL,
    expire_date DATE,
    FOREIGN KEY (id_supplier) REFERENCES suppliers(id_supplier)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE products (

    id_product INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_supplier INT NOT NULL,
    final_price INT NOT NULL,
    FOREIGN KEY (id_supplier) REFERENCES suppliers(id_supplier)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE sales (

    id_product INT NOT NULL,
    amount INT,
    total_amount INT,
    FOREIGN KEY (id_product) REFERENCES products(id_product)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

ALTER TABLE sales ADD COLUMN
id_client INT;



ALTER TABLE sales RENAME COLUMN
    total_amount TO total_spent;


ALTER TABLE sales ADD CONSTRAINT
FOREIGN KEY (id_client) REFERENCES clients(id_client)
ON UPDATE CASCADE
ON DELETE NO ACTION; 

ALTER TABLE sales MODIFY id_client INT AFTER id_product;

CREATE TABLE client_login (

    id_client INT,
    client_email VARCHAR(40) NOT NULL,
    client_username VARCHAR(30),
    client_password VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_client) REFERENCES clients(id_client)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

CREATE TABLE admin_login (

    id_management INT,
    admin_email VARCHAR(40) NOT NULL,
    admin_username VARCHAR(30),
    admin_password VARCHAR(30) NOT NULL,
    FOREIGN KEY (id_management) REFERENCES management(id_manager)
    ON UPDATE CASCADE
    ON DELETE NO ACTION
);

