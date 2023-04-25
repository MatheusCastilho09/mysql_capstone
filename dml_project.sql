INSERT INTO clients(first_name, last_name, phone_number, email) VALUES
    ('John', 'Doe', '1234567890', 'johndoe@example.com'),
    ('Mary', 'Smith', '2345678901', 'marysmith@example.com'),
    ('Jane', 'Doe', '3456789012', 'janedoe@example.com'),
    ('Bob', 'Johnson', '4567890123', 'bobjohnson@example.com'),
    ('Samantha', 'Williams', '5678901234', 'samanthawilliams@example.com'),
    ('David', 'Lee', '6789012345', 'davidlee@example.com'),
    ('Sarah', 'Nguyen', '7890123456', 'sarahnguyen@example.com'),
    ('James', 'Brown', '8901234567', 'jamesbrown@example.com'),
    ('Linda', 'Taylor', '9012345678', 'lindataylor@example.com'),
    ('Michael', 'Davis', '0123456789', 'michaeldavis@example.com');


UPDATE clients SET email = REPLACE(email, '@example.com', '@gmail.com');

INSERT INTO employees (first_name, last_name, phone_number, email, salary, entry_date, exit_date) VALUES
    ('John', 'Doe', '123-456-7890', 'johndoe@example.com', 50000, '2022-01-01', NULL),
    ('Mary', 'Smith', '234-567-8901', 'marysmith@example.com', 60000, '2022-02-01', NULL),
    ('Jane', 'Doe', '345-678-9012', 'janedoe@example.com', 55000, '2022-03-01', NULL),
    ('Bob', 'Johnson', '456-789-0123', 'bobjohnson@example.com', 70000, '2022-04-01', NULL),
    ('Samantha', 'Williams', '567-890-1234', 'samanthawilliams@example.com', 80000, '2022-05-01', NULL),
    ('David', 'Lee', '678-901-2345', 'davidlee@example.com', 90000, '2022-06-01', NULL),
    ('Sarah', 'Nguyen', '789-012-3456', 'sarahnguyen@example.com', 75000, '2022-07-01', NULL),
    ('James', 'Brown', '890-123-4567', 'jamesbrown@example.com', 65000, '2022-08-01', NULL),
    ('Linda', 'Taylor', '901-234-5678', 'lindataylor@example.com', 85000, '2022-09-01', NULL),
    ('Michael', 'Davis', '012-345-6789', 'michaeldavis@example.com', 95000, '2022-10-01', NULL),
    ('Karen', 'Wilson', '123-456-7890', 'karenwilson@example.com', 85000, '2022-11-01', NULL),
    ('Tom', 'Jones', '234-567-8901', 'tomjones@example.com', 80000, '2022-12-01', NULL);

UPDATE employees SET email = REPLACE(email, '@example.com', '@gmail.com');

INSERT INTO departments (id_department,id_employee, department_name) VALUES
    (101,1,'Sales'),
    (102,2,'Sales'),
    (103,3,'Sales'),
    (104,4,'Sales'),
    (201,5,'HR'),
    (202,6,'HR'),
    (203,7,'HR'),
    (204,8,'HR'),
    (301,9,'IT'),
    (302,10,'IT'),
    (303,11,'IT'),
    (304,12,'IT');

INSERT INTO management (id_employee, id_department, id_manager) VALUES
    (2,102, 2004),
    (7,203, 2005),
    (12,304, 2006);

INSERT INTO suppliers (name, description, supplier_address) VALUES
    ('ABC Supplies','Supplier of office equipment','123 Main St, California'),
    ('Smith Industrial','Industrial tools supplier','456 Park Ave, Texas'),
    ('Johnson Wholesale','Wholesale distributor of goods','789 Elm St, Texas'),
    ('Greenleaf Farms','Supplier of organic produce','234 Oak St, South Carolina'),
    ('Marino''s Meat and Deli','Supplier of specialty meats','567 Maple Dr, California');

    INSERT INTO feedstock (id_supplier, feedstock_name, feedstock_price, feedstock_batch, expire_date) VALUES
    (1,'Staplers and Pens',150,0247, null),
    (1,'Paper and Printers',800,0547,null),
    (2,'Impact Gun',300,0100,null),
    (2,'Hammers and Nails',80,0178,null),
    (3,'Flour',100,0056,'2023-06-01'),
    (3,'Eggs',250,0097,'2023-05-27'),
    (4,'Apple',200,0735,'2023-04-01'),
    (4,'Peaches',200,0735,'2023-04-01'),
    (5,'Wagyu Beef',500,0006,'2024-01-01'),
        (5,'Ribcage',200,0056,'2024-01-01');

    INSERT INTO products (id_supplier, final_price) VALUES
    (1,40),
    (2,350),
    (3,50),
    (5,600);

INSERT INTO sales (id_product, id_client, amount, total_spent) VALUES
    (1,10,40,1600),
    (4,1,2,1200),
    (3,5,8,400);

INSERT INTO admin_login (id_management, admin_email, admin_username, admin_password) VALUES
    (2004,'marysmith@gmail.com','marys2','?P9Jz'),
    (2005,'sarahnguyen@gmail.com',null,'&@tD6'),
    (2006,'tomjones@gmail.com','tomthecat','ir&5D');

INSERT INTO client_login (id_client, client_email, client_username, client_password) VALUES
    (1,'johndoe@gmail.com','jhondoes','E9@iw'),
    (2,'marysmith@gmail.com','mssmith','BfQ8!'),
    (3,'janedoe@gmail.com','janems','7G!d1'),
    (4,'bobjohnson@gmail.com','bobtheman','rg@3P'),
    (5,'samanthawilliams@gmail.com','sams2','6L#yi'),
    (6,'davidlee@gmail.com','leeplayer','V4@0g'),
    (7,'sarahnguyen@gmail.com','sarathebest','$cUM9'),
    (8,'jamesbrown@gmail.com','james23','!&Am1'),
    (9,'lindataylor@gmail.com','lindabonita','Eed#2'),
    (10,'michaeldavis@gmail.com','theguyfromgta','a9$3X');