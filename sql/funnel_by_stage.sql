-- Unique sessions per funnel stage
SELECT
  COUNT(DISTINCT session_id) AS sessions,
  COUNT(DISTINCT CASE WHEN event_name='view_product'   THEN session_id END) AS viewed,
  COUNT(DISTINCT CASE WHEN event_name='add_to_cart'    THEN session_id END) AS carted,
  COUNT(DISTINCT CASE WHEN event_name='begin_checkout' THEN session_id END) AS checkout,
  COUNT(DISTINCT CASE WHEN event_name='purchase'       THEN session_id END) AS purchased
FROM events;