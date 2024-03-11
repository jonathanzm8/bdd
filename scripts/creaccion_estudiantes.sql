-- creacion studiantes

create table estudiantes(
	cedula char(10) not null,
	nombre varchar(50)not null,
	apellido varchar (50)not null,
	enail varchar (50) not null,
	fecha_nacimiento date,
	
	constraint estudiantes_key primary key (cedula)
)

insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1135487609','jonatha','perez','jonat@gmail.com','02/03/1996')
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1135482309','lucas','villa','villat@gmail.com','02/09/1999')
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1123487609','luis','alarcon','luis@gmail.com','02/03/2000')
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1139087609','miguel','lopez','miguell@gmail.com','02/12/1996')
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1235487609','danna','granda','dgranda@gmail.com','08/11/2003')
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1138787609','domenica','ordoñez','deome@gmail.com','02/01/1998')
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1135227609','jose','condor','jose@gmail.com','23/07/1997')
insert into estudiantes(cedula,nombre,apellido,enail,fecha_nacimiento)
values('1111487609','pepe','perez','pepe@gmail.com','30/12/1996')

select * from estudiantes

select nombre, cedula from estudiantes

select * from estudiantes where cedula like '17%'

select * from estudiantes where nombre like 'A%'

update estudiantes set apellido='Hernandez' where cedula like '17%'
delete from estudiantes where cedula like '%05'


select * from estudiantes where nombre like 'M%' or apellido like '%z'

select * from estudiantes where cedula like '32' and cedula like'18%'

select * from estudiantes where cedula like '%06' or cedula like '17%'
