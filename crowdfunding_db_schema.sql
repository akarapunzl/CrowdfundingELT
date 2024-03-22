CREATE TABLE categories(
category_id VARCHAR(30) NOT NULL PRIMARY KEY,
category VARCHAR(30) NOT NULL);

CREATE TABLE subcategories(
subcategory_id VARCHAR(30) NOT NULL PRIMARY KEY,
subcategory VARCHAR(30) NOT NULL);

CREATE TABLE contacts(
contact_id INT NOT NULL PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
email VARCHAR(50) NOT NULL);

CREATE TABLE campaign(
cf_id INT NOT NULL PRIMARY KEY,
contact_id INT NOT NULL,
company_name VARCHAR(100) NOT NULL,
description VARCHAR(100) NOT NULL,
goal FLOAT NOT NULL ,
pledged FLOAT NOT NULL,
outcome VARCHAR(30) NOT NULL,
backers_count INT NOT NULL,
country VARCHAR(30) NOT NULL,
currenty VARCHAR(30) NOT NULL,
launch_date DATE NOT NULL,
end_date DATE NOT NULL,
category_id VARCHAR(30) NOT NULL,
subcategory_id VARCHAR(30) NOT NULL,
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
FOREIGN KEY (category_id) REFERENCES categories(category_id),
FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id));

SELECT * FROM campaign;
SELECT * FROM contacts;
SELECT * FROM categories;
SELECT * FROM subcategories;