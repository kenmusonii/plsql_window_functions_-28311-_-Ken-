SELECT
    ->     s.full_name,
    ->     SUM(ut.revenue_amount) AS total_revenue,
    ->     ROW_NUMBER() OVER (ORDER BY SUM(ut.revenue_amount) DESC) AS row_num,
    ->     RANK() OVER (ORDER BY SUM(ut.revenue_amount) DESC) AS revenue_rank,
    ->     DENSE_RANK() OVER (ORDER BY SUM(ut.revenue_amount) DESC) AS dense_revenue_rank,
    ->     PERCENT_RANK() OVER (ORDER BY SUM(ut.revenue_amount) DESC) AS percent_rank
    -> FROM usage_transactions ut
    -> JOIN subscribers s
    ->     ON ut.subscriber_id = s.subscriber_id
    -> GROUP BY s.subscriber_id, s.full_name;

 SELECT
    ->     usage_date,
    ->     revenue_amount,
    ->     SUM(revenue_amount) OVER (
    ->         ORDER BY usage_date
    ->         ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ->     ) AS running_total
    -> FROM usage_transactions;

SELECT
    ->     transaction_id,
    ->     revenue_amount,
    ->     AVG(revenue_amount) OVER (
    ->         ORDER BY transaction_id
    ->         RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ->     ) AS running_average
    -> FROM usage_transactions;