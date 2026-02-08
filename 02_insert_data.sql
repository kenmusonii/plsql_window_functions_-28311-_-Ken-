 INSERT INTO subscribers (subscriber_id, full_name, region, registration_date) VALUES
    -> (1001, 'MUKAMANA Aline', 'Kigali', '2026-01-10'),
    -> (1002, 'NIYONSENGA Jean', 'Huye', '2026-01-12'),
    -> (1003, 'UWIMANA Eric', 'Musanze', '2026-01-15'),
    -> (1004, 'MUKARUTONI Grace', 'Rubavu', '2026-01-18'),
    -> (1005, 'HABIMANA Paul', 'Nyagatare', '2026-01-20');

 INSERT INTO services (service_id, service_name, service_type, monthly_fee) VALUES
    -> (2001, 'Ihereze', 'Loan', 1000),
    -> (2002, 'Tunga', 'Savings', 1500),
    -> (2003, 'Kwizigama', 'Investment', 2000),
    -> (2004, 'Kwihuta', 'Mobile Money', 500);

INSERT INTO usage_transactions
    -> (transaction_id, subscriber_id, service_id, usage_date, billing_month, usage_units, revenue_amount)
    -> VALUES
    -> (1, 1001, 2001, '2026-02-01', '2026-02-01', 30, 3000),
    -> (2, 1002, 2002, '2026-02-02', '2026-02-01', 20, 3000),
    -> (3, 1003, 2003, '2026-02-03', '2026-02-01', 10, 2000),
    -> (4, 1004, 2001, '2026-02-04', '2026-02-01', 25, 2500),
    -> (5, 1001, 2004, '2026-02-05', '2026-02-01', 40, 2000),
    -> (6, 1005, 2002, '2026-02-06', '2026-02-01', 15, 2250);