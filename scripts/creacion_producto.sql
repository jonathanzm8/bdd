--- creacion de tabla producto

drop table productos

create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200) ,
	precio  money not null,
	stock int not null,
	
	constraint producto_key primary key (codigo)
)

insert into productos(codigo,nombre,descripcion, precio,stock)
values(12,'galleta','sabor chocolate',2.00,12)

insert into productos(codigo,nombre,descripcion, precio,stock)
values(13,'caramelos','sabor fresa',1.00,2)

insert into productos(codigo,nombre,descripcion, precio,stock)
values(14,'bebidas','sabor tropical',2.00,20)

insert into productos(codigo,nombre,descripcion, precio,stock)
values(15,'pera','',1.00,20)

insert into productos(codigo,nombre,descripcion, precio,stock)
values(16,'mazanas','',1.00,16)
insert into productos(codigo,nombre, precio,stock)
values(17,'uvas',1.00,34)
insert into productos(codigo,nombre, precio,stock)
values(18,'durazno',1.50,25)
insert into productos(codigo,nombre, precio,stock)
values(19,'mango',1.34,22)

select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select * from productos where precio between money(2) and money(3)

update productos set stock= 0 where descripcion is null

delete from productos where descripcion is null

select * from productos where stock= 10 and precio<money(10)

select * from productos where nombre like 'm%' or descripcion= ''

select * from productos 
where descripcion is null or stock= 0

select * from ventas
create table ventas(
	id_ventas int,
	codigo_producto int,
	fecha_venta date ,
	cantidad int,
	
	constraint ventas_key primary key (id_ventas)
)
-- creacion de foreing key 
alter table ventas
add constraint ventas_productos_fk 
foreign key (codigo_producto)
references producto(codigo)

insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(1,13,'2024/08/22',12)
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(2,19,'2024/08/29',4)
insert into ventas (id_ventas, codigo_producto, fecha_venta, cantidad)
values(3,13,'2024/08/29',8)


