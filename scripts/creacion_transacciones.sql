-- creaccion de transacciones

create table transacciones(

	codigo int not null,
	numero_cuenta char(5) not null,
	monto money not null,
	tipo char(1)not null,
	fecha date not null,
	hora time not null,
	
	constraint transacciones_key primary key (codigo)
)
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(1,'12345',200.00,'c','22/04/2024','10:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(2,'12315',220.00,'c','22/06/2024','12:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(3,'21345',210.00,'c','12/03/2024','15:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(4,'14545',100.00,'c','02/07/2024','12:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(5,'14445',250.00,'c','26/09/2024','19:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(6,'12332',200.20,'c','08/03/2024','09:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(7,'12343',260.00,'c','28/01/2024','13:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(8,'18845',220.00,'c','22/06/2024','14:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(9,'88345',270.00,'c','20/09/2024','15:00')
insert into transacciones(codigo,numero_cuenta,monto,tipo,fecha,hora)
values(10,'09345',299.00,'c','25/09/2024','08:00')

select * from transacciones