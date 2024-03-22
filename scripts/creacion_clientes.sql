select * from clientes

insert into clientes( cedula, nombre, apellido, edad)
values('1105232977', 'jonathan','perez', 23)
insert into clientes( cedula, nombre, apellido, edad)
values('1105232978', 'jonathan','paez', 23)
insert into clientes( cedula, nombre, apellido, edad)
values('110523288', 'Monica','soto', 28)
insert into clientes( cedula, nombre, apellido, edad)
values('110523288', 'jesus','soto', 22)
insert into clientes( cedula, nombre, apellido, edad)
values('110523288', 'pablo','medina', 21)
insert into clientes( cedula, nombre, apellido, edad)
values('1105232922', 'pepe','soto', 21)

create table compras(
	id_compras int,
	cedula char(10),
	fecha_compra date ,
	monto decimal (10,2),
	compra_cliente varchar(20),
	
	constraint compras_key primary key(id_compras)
	
)
-- creacion de foreing key 
alter table compras
add constraint compras_clientes_fk 
foreign key (compra_cliente)
references clientes(cedula)


select * from compras
insert into compras( id_compras, cedula, fecha_compra, monto, compra_cliente)
values('11', '1105232977','2023/09/21', 23,'1105232977')
insert into compras( id_compras, cedula, fecha_compra, monto, compra_cliente)
values('12', '1105232922','2022/09/21', 20,'1105232922')

insert into compras( id_compras, cedula, fecha_compra, monto, compra_cliente)
values('13', '110523288','2022/09/29',920,'110523288')