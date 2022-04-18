/* create database */
CREATE DATABASE lab_mysql;

/* tables */
/* cars */
CREATE TABLE IF NOT EXISTS lab_mysql.cars(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	vehicle_id VARCHAR(20),
	manufacturer VARCHAR(50),
	model VARCHAR(50),
	manufacturer_year YEAR,
	color VARCHAR(50)
);

/* customers */
CREATE TABLE IF NOT EXISTS lab_mysql.customers(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	customer_id INT,
	customer_name VARCHAR(50),
	phone VARCHAR(50),
	email VARCHAR(50),
	address VARCHAR(100),
	city VARCHAR(50), 
	state VARCHAR(50),
	country VARCHAR(50),
	postal_code VARCHAR(50)
);

/* salesperson */
CREATE TABLE IF NOT EXISTS lab_mysql.salespersons(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	staff_id INT,
	staff_name VARCHAR(50),
	store VARCHAR(50)
);

/* invoices */
CREATE TABLE IF NOT EXISTS lab_mysql.invoices(
	id INT PRIMARY KEY AUTO_INCREMENT, 
	invoice_id INT,
	invoice_date DATE,
	vehicle_id INT,
	customer_id INT,
	staff_id INT,
FOREIGN KEY (vehicle_id) REFERENCES cars(id),
FOREIGN KEY (customer_id) REFERENCES customers(id),
FOREIGN KEY (staff_id) REFERENCES salespersons(id)
);
