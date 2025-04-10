use classicmodels;
select * from employees;
select * from employees where employeeNumber = 1076;
select * from customers;

select employeeNumber,concat(firstname,lastname) as salesperson,count(customerNumber) as uniquecustomes from employees e join customers c on e.employeeNumber = c.salesRepEmployeeNumber
group by employeeNumber,salesperson order by uniquecustomes desc;
select * from orders;

create view maxq as

SELECT OrderNumber, MAX(quantityOrdered) AS SecondHighestQuantity
FROM orderdetails
WHERE quantityOrdered < (
    SELECT MAX(quantityOrdered)
    FROM orderdetails AS SubOrders
    WHERE SubOrders.OrderNumber = orderdetails.OrderNumber
)
GROUP BY OrderNumber;

create index vamsi on employees(firstName);

