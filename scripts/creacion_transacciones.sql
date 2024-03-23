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

select * from transacciones where tipo ='D'

select * from transacciones where monto between money(200) and money(200)
select codigo,monto,tipo,fecha from transacciones where fecha is not null
update transacciones set tipo ='T' where monto between money(100) and money(500) and fecha='09/01/2024' and  hora= '14:00' and hora= '20:00'

delete from transacciones where  hora='14:00' and hora='18:00' and fecha= '08/01/2024'

select * from transacciones where (tipo = 'c') and numero_cuenta= '222001' and numero_cuenta= '22004'

select * from transacciones where (tipo = 'd' and fecha= '25/05/2024') and (numero_cuenta='22007' and numero_cuenta='22010')

select * from transacciones where (codigo= 1 and codigo= 5) and (numero_cuenta='22' or numero_cuenta= '22004') and (fecha='26/05/2024' and fecha='29/05/2024')
								   

select * from transacciones
select * from banco

create table banco(
	codigo_banco int,
	codidigo_transaccion int ,
	detalle varchar(100),
	constraint banco_key primary key (codigo_banco)
)

insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1112,1,'detalle de la tansaccion por motivps de pagos ')
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1113,3,'detalle de la tansaccion por pago de deuda ')
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1114,1,'detalle de la tansaccion por motivps de pagos ')
insert into banco(codigo_banco,codidigo_transaccion,detalle)
values(1115,2,'detalle de la tansaccion por compra de uan moto ')

alter table banco
add constraint banco_transaccion_key 
foreign key (codidigo_transaccion)
references transacciones(codigo)

select * from transacciones 
where tipo = 'c'
where numero_cuenta= '22001' and numero_cuenta = '22004'

select * from transacciones tran, banco ban
where ban.codidigo_transaccion= 1




select count(codigo) as transacciones from transacciones
where tipo= 'c'

select numero_cuenta , round(avg(cast(monto as decimal)),2) as monto_promedio from transacciones 
group by( numero_cuenta)
