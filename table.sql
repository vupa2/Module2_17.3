SELECT status, COUNT(*) as 'So luong status'
    FROM orders
    GROUP BY status;

SELECT status, SUM(quantityOrdered * priceEach)
    FROM orders
    INNER JOIN orderdetails ON orders.orderNumber = orderdetails.orderNumber
    GROUP BY status;

SELECT orderNumber, SUM(quantityOrdered * priceEach)
    FROM orderdetails
    GROUP BY orderdetails.orderNumber;

SELECT YEAR(orderDate) as year, SUM(quantityOrdered * priceEach) as total
    FROM orders
    INNER JOIN orderdetails on orders.orderNumber = orderdetails.orderNumber
    GROUP BY year
    HAVING year > 2003;
