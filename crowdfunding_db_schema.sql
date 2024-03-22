CREATE TABLE categories(
category_id VARCHAR(30) PRIMARY KEY,
category VARCHAR(30));

CREATE TABLE subcategories(
subcategory_id VARCHAR(30) PRIMARY KEY,
subcategory VARCHAR(30));

CREATE TABLE contacts(
contact_id INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
email VARCHAR(50));

CREATE TABLE campaign(
cf_id INT PRIMARY KEY,
contact_id INT,
company_name VARCHAR(100),
description VARCHAR(100),
goal FLOAT(10),
pledged FLOAT(10),
outcome VARCHAR(30),
backers_count INT,
country VARCHAR(30),
currenty VARCHAR(30),
launch_date DATE,
end_date DATE,
category_id VARCHAR(30),
subcategory_id VARCHAR(30),
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES categories(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id));

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM categories;
SELECT * FROM subcategories;