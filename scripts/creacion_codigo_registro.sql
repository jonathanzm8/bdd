-- creacion resgistro-entrada

drop table registro_entrada
create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora time not null,
	
	constraint registro_entrada_key primary key(codigo_registro)
)

insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(1,'1239874657','08/03/2024','10:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(2,'1222874657','08/05/2024','12:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(3,'1349874657','02/04/2024','15:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(4,'1239873357','02/03/2024','14:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(5,'2239874657','05/11/2024','09:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(6,'1266874657','22/04/2024','18:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(7,'8739874657','08/09/2024','19:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(8,'1239834657','08/06/2024','11:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(9,'1239878657','18/04/2024','08:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora)
values(10,'1245774657','28/09/2024','13:00')

select * from registro_entrada

select cedula_empleado,fecha,hora from resgistro_entrada

select * from registro_entrada where hora

between '07:00' and '14:00'

select * from registro_entrada where hora> '08:00'




