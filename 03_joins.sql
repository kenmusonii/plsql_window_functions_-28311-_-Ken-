SELECT
    ->     ut.transaction_id,
    ->     s.full_name,
    ->     sv.service_name,
    ->     ut.usage_units,
    ->     ut.revenue_amount
    -> FROM usage_transactions ut
    -> INNER JOIN subscribers s
    ->     ON ut.subscriber_id = s.subscriber_id
    -> INNER JOIN services sv
    ->     ON ut.service_id = sv.service_id;

 SELECT
    ->     s.subscriber_id,
    ->     s.full_name,
    ->     ut.transaction_id
    -> FROM subscribers s
    -> LEFT JOIN usage_transactions ut
    ->     ON s.subscriber_id = ut.subscriber_id
    -> WHERE ut.transaction_id IS NULL;

SELECT
    ->     sv.service_id,
    ->     sv.service_name,
    ->     ut.transaction_id
    -> FROM usage_transactions ut
    -> RIGHT JOIN services sv
    ->     ON ut.service_id = sv.service_id
    -> WHERE ut.transaction_id IS NULL;

 SELECT
    ->     s.full_name,
    ->     sv.service_name
    -> FROM subscribers s
    -> LEFT JOIN usage_transactions ut
    ->     ON s.subscriber_id = ut.subscriber_id
    -> LEFT JOIN services sv
    ->     ON ut.service_id = sv.service_id
    ->
    -> UNION
    ->
    -> SELECT
    ->     s.full_name,
    ->     sv.service_name
    -> FROM services sv
    -> LEFT JOIN usage_transactions ut
    ->     ON sv.service_id = ut.service_id
    -> LEFT JOIN subscribers s
    ->     ON ut.subscriber_id = s.subscriber_id;


SELECT
    ->     a.full_name AS subscriber_1,
    ->     b.full_name AS subscriber_2,
    ->     a.region
    -> FROM subscribers a
    -> INNER JOIN subscribers b
    ->     ON a.region = b.region
    ->    AND a.subscriber_id <> b.subscriber_id;