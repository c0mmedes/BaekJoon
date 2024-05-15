SELECT P.PRODUCT_CODE, SUM(P.PRICE*OS.SALES_AMOUNT)	SALES
FROM PRODUCT P
JOIN OFFLINE_SALE OS ON P.PRODUCT_ID = OS.PRODUCT_ID
GROUP BY PRODUCT_CODE
ORDER BY SALES DESC, P.PRODUCT_CODE