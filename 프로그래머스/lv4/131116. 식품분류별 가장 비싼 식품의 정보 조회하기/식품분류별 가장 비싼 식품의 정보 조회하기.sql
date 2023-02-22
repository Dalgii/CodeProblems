SELECT B.CATEGORY, A.PR AS MAX_PRICE, B.PRODUCT_NAME
  FROM FOOD_PRODUCT B
  JOIN (SELECT CATEGORY, MAX(PRICE) PR
          FROM FOOD_PRODUCT
         GROUP BY CATEGORY) A
    ON A.CATEGORY = B.CATEGORY
 WHERE B.PRICE = A.PR
   AND B.CATEGORY IN ('과자', '국', '김치', '식용유')
 ORDER BY MAX_PRICE DESC;