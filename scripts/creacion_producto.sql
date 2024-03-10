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

select * from productos where nombre like 'Q%'

select * from productos where descripcion is null

select * from productos where precio between money(2) and money(3)

update productos set stock= 0 where descripcion is null