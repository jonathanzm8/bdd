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
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,)
values(11,'1245774657','28/11/2024','13:00')
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(12,'1245774623','28/11/2024','13:00',2201)
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(13,'1245774233','28/11/2024','13:00',2201)
insert into registro_entrada(codigo_registro,cedula_empleado,fecha,hora,codigo_empleado)
values(14,'1245774623','28/11/2024','13:00',1212)

alter table registro_entrada
add constraint registo_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

select * from registro_entrada

select cedula_empleado,fecha,hora from resgistro_entrada

select * from registro_entrada where hora

between '07:00' and '14:00'

select * from registro_entrada where hora> '08:00'


update registro_entrada set cedula_empleado='082345679' where fecha= '07/01/2024'

delete from registro_entrada where fecha='06/01/2024'

select * from registro_entrada where fecha= '09/01/2024' or cedula_empleado like '17%'

select * from registro_entrada where(fecha= '09/01/2024' and cedula_empleado like '17%') and (hora='08:00' and hora= '12:00')

select * from registro_entrada where (fecha= '08/01/2024' and cedula_empleado like '17%')and (hora='08:00' and hora= '12:00') or (fecha= '09/01/2024' and cedula_empleado like '08%') and (hora='09:00' and hora= '13:00') 

alter table registro_entrada 
add column codigo_empleado int 

drop table empleado

create table empleado(
	codigo_empleado int,
	nombre varchar(50),
	fecha date,
	hora time, 
	
	constraint empleado_key primary key (codigo_empleado)
	
)
select * from empleado
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(1212,'jonathan','2024/08/12','14:00')
insert into empleado(codigo_empleado,nombre,fecha,hora)
values(2201,'luis','2024/05/12','14:30')