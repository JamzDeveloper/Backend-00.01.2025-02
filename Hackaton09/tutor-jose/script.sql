-- 2 Seleccionar los proveedores que viven en la ciudad de "BERLIN"
use northwind;
select * from supplier 
where upper(city)='BERLIN';

-- 3Seleccionar los empleados con código 3,5 y 8

SELECT * FROM employee
where  employeeId=3 or employeeId=5 or employeeId=8;

SELECT * FROM employee
WHERE employeeId in (3,5,8);

-- 4 Seleccionar los productos que tienen stock mayor que cero y son del proveedor 1,3 y 5

select * from product
where unitsInStock >=0 and (supplierId in (1,3,5));

-- alternativa con join

select * from product
inner join supplier
on product.supplierId= supplier.supplierId
where product.unitsInStock >=0 and (supplier.supplierId in (1,3,5));



-- 6 Mostrar las órdenes de compra entre las fechas 01/01/1997 al 15/07/1997


select * from salesorder
where orderDate between  '1997-01-01'and '1997-07-01';


-- 8 Mostrar las ordenes hechas en el año 1996

select * from salesorder 
where year(orderDate)= 1996;


-- extraer el mes de una fecha 
select month('1997-01-01');

select day('1997-01-01');

-- 11 Mostrar todos los clientes que no tienen fax


select * from customer
where fax is null;


-- 12 Mostrar todos los clientes que tienen fax

 select * from customer
where fax is not null;

-- 13 Mostrar el nombre del producto, el precio, el stock y el nombre de la categoría a la que pertenece.


SELECT unitPrice, unitsInStock, categoryName from product
inner join category
on category.categoryId = product.categoryId;


-- 15 Mostrar el número de orden, el código del producto, el precio, la cantidad y el total pagado por producto.

select orderId,productId,unitPrice,quantity,(unitPrice * quantity-discount) as totalPrice from orderdetail;


-- 16 Mostrar el número de la orden, fecha, código del producto, precio, código del empleado y su nombre completo.

select so.orderId,so.orderDate,
od.productId,od.unitPrice,
e.employeeId, e.firstname
from salesOrder so
inner join orderdetail od
on  so.orderId = od.orderId
inner join employee e
on so.employeeId = e.employeeId;


-- 19 Mostrar los 10 productos con menor precio

select * from product
order by unitPrice asc -- desc
limit 10;
-- 24 Seleccionar todos los campos de clientes,cuya compania empiece con la letra B y pertenezcan a UK ,ordenar por nombre de la compania

select * from customer 
where companyName like 'B%' and country ='UK';


-- 29 Seleccionar los 5 productos mas vendidos

select  o.productId,p.productName, sum(o.quantity) as totalSold from  orderdetail o
inner join product p
on o.productId = p.productId
group by o.productId, p.productName
order by totalSold desc
limit 5;

-- 30 Seleccionar los jefes de los empleados


select e.employeeId,concat(e.firstname,' ',e.lastname) employeeName,
e.mgrId ,
concat(m.firstname,' ',m.lastname) manangerName
 from employee e
left join employee m 
on e.mgrId = m.employeeId
;

-- 32 Obtener todos los clientes del Pais de USA,Francia y UK

select * from customer
where country in ('USA','France','UK');

-- 34 Obtener todas las ordenes hechas por el empleado King Robert


select * from employee;
select * from salesOrder so
inner join employee e
on so.employeeId = e.employeeId
where e.firstname='Robert' and e.lastname ='King';


-- 38 Obtener todos los productos(codigo,nombre,precio,stock) de las ordenes hechas desde 1997 hasta la fecha de hoy.

select p.productId, p.productName,p.unitPrice, p.unitsInStock
from product p
inner join orderDetail od
on p.productId = od.productId
inner join salesOrder so
on od.orderId = so.orderId
where so.orderDate between '1997-01-01' and now();

-- 44 Obtener el Nombre del cliente,Nombre del Proveedor,Nombre del empleado y el nombre de los productos que estan en la orden 10794

select c.companyName as customerName,
s.companyName as supplierName,
concat(e.firstname, ' ', e.lastName) as employeeName,
p.productName
from salesorder so
inner join customer c on so.custId= c.custId
inner join employee e on e.employeeId = so.employeeId
inner join orderdetail od on so.orderId = od.orderId
inner join product p on od.productId = od.productId
inner join supplier s on p.supplierId = s.supplierId
where so.orderId=10794;

/** 48
Seleccionar el nombre de la compañía del cliente, nombre del contacto,
 el código de la orden de compra, la fecha de la orden de compra, 
 el código del producto,cantidad pedida del producto, nombre del 
 producto y el nombre de la compañía proveedora,
 usas JOIN.Solamente
 las compañías proveedoras 
 que comienzan con la letra de la 
A hasta la letra G,además la cantidad 
pedida del producto debe estar entre 23 y 187.
*/

select c.companyName as customerCompany,
c.contactName,
so.orderId,
so.orderDate,
p.productId,
od.quantity,
p.productName,
s.companyName  as supplierCompany
from salesorder so
inner join customer c on so.custId= c.custId
inner join orderdetail od on so.orderId = od.orderId
inner join product p on od.productId = od.productId
inner join supplier s on p.supplierId = s.supplierId
where left(s.companyName,1)  between 'A' and 'G' 
and  od.quantity between 23 and 187;


