-- USE lco_git_share;

-- TODO: Get all order is, customers name and date when order was placed

-- SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
-- FROM (Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID) ;

-- TODO: Get the order id, customer name and who is the shipper for that order.

-- SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
-- FROM ((Orders
-- INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
-- INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

-- TODO: Get all customers and thier order id

-- SELECT Customers.CustomerName, Orders.OrderID
-- FROM (Customers
-- LEFT JOIN Orders 
-- ON Customers.CustomerID = Orders.CustomerID) ORDER BY Orders.OrderID;

-- TODO: RIGHT JOIN

-- SELECT DISTINCT Customers.CustomerName, Orders.OrderID
-- FROM (Orders
-- RIGHT JOIN Customers 
-- ON Customers.CustomerID = Orders.CustomerID);

-- TODO: UNION

-- SELECT City FROM Customers
-- UNION ALL
-- SELECT City FROM Suppliers ORDER BY City;










