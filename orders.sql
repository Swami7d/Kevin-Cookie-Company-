SELECT
    c.CustomerID,
    c.CustomerName,
    o.OrderID,
    o.OrderTotal,
    p.CookieID,
    p.CookieName,
    P.CostPerCookie,
    p.RevenuePerCookie,
    P.CostPerCookie * p.RevenuePerCookie AS total_price
FROM
    Orders o
JOIN
    Customers c ON o.CustomerID = c.CustomerID
JOIN
    Order_Product op ON o.OrderID = op.OrderID
JOIN
    Product p ON op.CookieID = p.CookieID
ORDER BY
    o.OrderTotal DESC;
