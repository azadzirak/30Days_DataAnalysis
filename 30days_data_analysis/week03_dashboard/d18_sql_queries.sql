-- بارگزاری و یا ساخت دیتا بیس

SELECT "Product line", AVG("Rating") AS avg_rating
FROM supermarket
GROUP BY "Product line"
ORDER BY avg_rating DESC;

