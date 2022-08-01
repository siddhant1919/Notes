-- USE lco_motors;

-- TODO: How would you fetch details of the cutomers who cancelled orders?

-- SELECT * 
-- FROM customers
-- LEFT JOIN orders
-- ON orders.customer_id = customers.customer_id
-- WHERE orders.status = 'Cancelled';

-- TODO: Fetch the details of customers who have done payments between the amount 5000 and 35000 ?

-- SELECT * 
-- FROM customers
-- LEFT JOIN payments
-- ON payments.customer_id = customers.customer_id
-- WHERE payments.amount BETWEEN 5000 AND 35000
-- ORDER BY payments.amount;

-- TODO: Add new employee / salesman with following details:-

-- INSERT INTO 
-- `employees`
-- (`employee_id`, `first_name`, `last_name`, `extension`, `email`, `office_code`, `reports_to`, `job_title`)
-- VALUES(
--   15657,
--   "lakshmi",
--   "Roy",
--   "x4056",
--   "lakshmiroy1@lcomotors.com",
--   4,
--   1088,
--   "Sales Rep"
-- );

-- TODO: Assign a new  employee to customer whose phone is 2125557413

UPDATE `customers` SET customers.sales_employee_id = 15657
WHERE customers.phone =  2125557413;


