SELECT * FROM sales
ORDER BY quantity * price DESC
LIMIT 1;

-- پیدا کردن بیشترین خرید.
-- این کوئری بزرگ ترین خرید رو نشون می ده.

SELECT AVG(price) As avg_price FROM sales;

-- پیدا کردن میانگین قیمت محصول ها.
-- AVG() میانگین رو حساب می کنه.

SELECT product, COUNT(*) As num_orders
FROM sales 
GROUP BY product;

-- بررسی تعداد خرید هر محصول.
-- تعداد دفعات خرید هر محصول.

SELECT * FROM sales
WHERE date BETWEEN "2025-08-01" AND "2025-08-02";

-- فروش در یک بازه زمانی خاص.
-- فقط خریدهای این بازه زمانی.

SELECT customer_name, SUM(quantity * price) As total_spent
FROM sales
GROUP BY customer_name
GROUP BY total_spent DESC
LIMIT 1;

-- پیدا کردن بیشترین مشتری (بر اساس مجموع خرید).
-- بیشترین هزینه کننده.

SELECT * FROM sales
WHERE customer_name = "Arad" AND price > 50;

-- ترکیب شرط ها (AND / OR)
-- خریدهای آراد که قیمتشون بیشتر از 50 باشه.