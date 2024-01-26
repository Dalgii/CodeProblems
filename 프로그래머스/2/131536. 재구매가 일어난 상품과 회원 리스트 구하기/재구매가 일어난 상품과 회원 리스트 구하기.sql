SELECT USER_ID, PRODUCT_ID
  FROM (SELECT USER_ID, PRODUCT_ID
             , COUNT(*) OVER(PARTITION BY USER_ID, PRODUCT_ID) AS COUNT
          FROM ONLINE_SALE)
 WHERE COUNT > 1
 GROUP BY USER_ID, PRODUCT_ID
 ORDER BY USER_ID, PRODUCT_ID DESC;