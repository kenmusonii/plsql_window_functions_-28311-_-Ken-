CREATE TABLE subscribers (
    ->     subscriber_id INT(10) NOT NULL PRIMARY KEY,
    ->     full_name VARCHAR(255) NOT NULL,
    ->     region VARCHAR(255) NOT NULL,
    ->     registration_date DATE NOT NULL
    -> );

CREATE TABLE services (
    ->     service_id INT(10) NOT NULL PRIMARY KEY,
    ->     service_name VARCHAR(255) NOT NULL,
    ->     service_type VARCHAR(255) NOT NULL,
    ->     monthly_fee DECIMAL(10,0) NOT NULL
    -> );

 CREATE TABLE usage_transactions (
    ->     transaction_id INT(10) NOT NULL PRIMARY KEY,
    ->     subscriber_id INT(10) NOT NULL,
    ->     service_id INT(10) NOT NULL,
    ->     usage_date DATE NOT NULL,
    ->     billing_month DATE NOT NULL,
    ->     usage_units INT(30) NOT NULL,
    ->     revenue_amount DECIMAL(10,0) NOT NULL,
    ->     CONSTRAINT fk_subscriber FOREIGN KEY (subscriber_id)
    ->         REFERENCES subscribers(subscriber_id),
    ->     CONSTRAINT fk_service FOREIGN KEY (service_id)
    ->         REFERENCES services(service_id)
    -> );