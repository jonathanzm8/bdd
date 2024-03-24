---Tablas Muchos a Muchos
-----1 
---RELACION MUCHOS A MUCHOS ENTRE USUARIOS Y GRUPO

 create table usuarios(
	 id int ,
	 nombre varchar(25) not null,
	 apellido varchar(25)not null,
	 fecha_nacimiento date,
	 constraint usuarios_pk primary key (id)
 )
 
 create table grupo(
	 id int ,
	 nombre varchar(25) not null,
	 descripcion varchar(75),
	 fecha_creacion date,
	 constraint grupo_pk primary key (id)
 )
 
 create table usuario_grupo(
	 us_id int not null,
	 gr_id int not null,
	 
	 constraint usuarios_fk foreign key (us_id) references usuarios(id),
	 constraint grupo_fk foreign key (gr_id) references grupo(id),
	 constraint usuario_grupo_pk primary key (us_id,gr_id)
	  
 )



insert into usuarios values (1,'Marilyn','Sagñay','05/11/2023'),
							(2,'Romel','Chamba','06/11/2023'),
							(3,'Mario','Guzñay','05/11/2023'),
							(4,'Johann','Domo','07/11/2023'),
							(5,'Monserrate','Vera','05/11/2023'),
							(6,'Lucio','Vargas','05/11/2023'),
							(7,'Martín','Arizaga','05/11/2023'),
							(8,'Fricson','Erazo','05/11/2023'),
							(9,'Jairo','Obando','05/11/2023'),
							(10,'Berni','Tomalá','05/11/2023');
							
							
insert into grupo values (1,'Maternal 1','Grupo de maternal matutino','08/03/2020'),
						 (2,'Maternal 2','Grupo de maternal vepertino','08/03/2020'),
						 (3,'Maternal 3','Grupo de maternal nocturno','08/03/2020'),
						 (4,'Incial 1 ','Grupo de inicial matutino','15/03/2021'),
						 (5,'Incial 2','Grupo de  inicial vespertino','15/03/2021'),
						 (6,'Incial 3','Grupo de  inicial  nocturno','15/03/2021'),
						 (7,'Incial intensivo','Grupo de inicial días sabados','15/03/2021'),
						 (8,'Maternal intensivo 1','Grupo de maternal matutino días sabados','15/03/2022'),
						 (9,'Maternal intensivo 2','Grupo de maternal vespertino días sabados','15/03/2022'),
						 (10,'Maternal intensivo 3','Grupo de maternal nocturno días sabados','15/03/2022');


insert into usuario_grupo values (1,8),
								 (2,3),
								 (3,8),
								 (4,9),
								 (5,1),
								 (6,2),
								 (7,8),
								 (8,8),
								 (9,10),
								 (10,1);
								 
select usu.nombre ,gru.nombre from usuarios usu, grupo gru, usuario_grupo usg
where usu.id = usg.us_id
and gru.id = usg.gr_id

select usu.nombre from usuarios usu, grupo gru, usuario_grupo usg
where usu.id = usg.us_id
and  usg.gr_id	=1	

select gru.nombre,count(usg.us_id) from  grupo gru, usuario_grupo usg
where gru.id = usg.us_id
group by(gru.nombre)

select usu.nombre ,gru.nombre from usuarios usu, grupo gru, usuario_grupo usg
where usu.id = usg.us_id
and gru.id = usg.gr_id
and gru.nombre like '%intensivo%'

select usu.nombre from usuarios usu
where usu.id = 2

select gru.nombre,max(usg.us_id) from  grupo gru, usuario_grupo usg
where gru.id = usg.us_id
group by(gru.nombre)

select usu.nombre ,gru.fecha_creacion from usuarios usu, grupo gru, usuario_grupo usg
where usu.id = usg.us_id
and gru.id = usg.gr_id
and gru.fecha_creacion= '2020/03/08' and gru.fecha_creacion= '2022/03/08'

select usu.nombre from usuarios usu
where usu.id = 3

select gru.descripcion, count(usg.us_id) from  grupo gru, usuario_grupo usg
where gru.id = usg.gr_id
and gru.nombre like '%matutino%'
group by(gru.descripcion)


								 
------2-------------------------------------------------------------------------------------------------------------
--RELACION MUCHOS A MUCHOS HABITACIONES Y HUESPEDES

create table habitaciones(
	habitacion_numero int,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int ,
	constraint habitaciones_pk primary key (habitacion_numero)
	
)

create table huespedes(
	id int ,
	nombres varchar(45) not null,
	apellidos varchar(45) not null,
	telefono char (10),
	correo varchar(45),
	direccion varchar (45),
	ciudad varchar(45),
	pais varchar (45),
	
	constraint huespedes_pk primary key (id)
	
)


create table reservas(
	inicio_fecha date,
	fin_fecha date,
	habitacion int not null,
	huesped_id int not null,
	constraint habitacion_fk foreign key (habitacion) references habitaciones(habitacion_numero),
	constraint huesped_fk foreign key (huesped_id) references huespedes(id),
	constraint reservas_pk primary key (habitacion,huesped_id)
)

 insert into habitaciones values (1,40.0,4,4),
 								 (2,20.0,4,2),
								 (3,40.0,4,4),
								 (4,40.0,3,4),
								 (5,20.0,3,2),
								 (6,20.0,3,2),
								 (7,20.0,2,2),
								 (8,20.0,2,2),
								 (9,20.0,2,2),
								 (10,15.0,1,1),
								 (11,15.0,1,1),
								 (12,15.0,1,1);
								 

insert into huespedes values    (1,'Ricardo','Montero',0980658774,'Ricmontero@gmail.com'),
								(2,'Sofía','Martinez',09887563205,'Sofimar@gmail.com'),
								(3,'Yamilteh','Guami',0998763298,'YAMGUAM@gmail.com'),
								(4,'Esther','Contreras',0995783602,'Esthcontro@gmail.com'),
								(5,'Wiliam','Mantilla',09858796320,'wmANTILLA@gmail.com'),
								(6,'Carmen','Noguera',0995876321,'Cnoguera@gmail.com'),
								(7,'Anika','Jimenez',0978965432,'AniJimenez@gmail.com'),
								(8,'Belen','Orejuela',0996365748,'BOrejuela@gmail.com'),
								(9,'Diana','Monroy',0987963214,'DianaMroy@gmail.com'),
								(10,'Bryan','Moncada',0986325741,'BrMoncada@gmail.com');
												
								
insert into reservas values ('11/05/2023','12/05/2023',2,10),
						    ('11/05/2023','12/05/2023',2,9),
							('22/06/2023','23/06/2023',1,1),
							('22/06/2023','23/06/2023',1,2),
							('22/06/2023','23/06/2023',1,3),
							('22/06/2023','23/06/2023',1,4),
							('01/01/2023','02/01/2023',12,5),
							('11/08/2023','12/08/2023',11,6),
							('11/05/2023','12/05/2023',10,7),
							('11/05/2023','12/05/2023',9,8);
							

select hab.habitacion_numero, hu.nombres, hu.apellidos from habitaciones hab, huespedes hu, reservas re
where hab.habitacion_numero = re.habitacion
and hu.id = re.huesped_id


select  hu.nombres, hu.apellidos from  huespedes hu
where id  in(select  huesped_id from  reservas where habitacion= 2)


select hab.habitacion_numero,count(re.huesped_id) from  habitaciones hab, reservas re
where hab.habitacion_numero = re.habitacion
group by(hab.habitacion_numero)

select hab.habitacion_numero,hab.piso,hu.nombres, hu.apellidos from  habitaciones hab, reservas re, huespedes hu
where hab.piso= 4
and hab.habitacion_numero = re.habitacion
and hu.id= re.huesped_id

select  hu.nombres, hu.apellidos from  huespedes hu
where id  in(select  huesped_id from  reservas where habitacion= 3)

select  hab.habitacion_numero, avg(re.huesped_id) from habitaciones hab , reservas re
where hab.habitacion_numero = re.habitacion
group by( hab.habitacion_numero)
							
select hab.habitacion_numero, hu.nombres, hu.apellidos from habitaciones hab, huespedes hu, reservas re
where hab.habitacion_numero = re.habitacion
and hu.id = re.habitacion

select hu.nombres, hu.apellidos from huespedes hu
where id in(select huesped_id from reservas where habitacion= 4)

select hab.habitacion_numero, sum(hab.precio_por_noche) from habitaciones hab, reservas re
where hab.habitacion_numero = re.habitacion
group by(hab.habitacion_numero)
-------------3
--RELACION MUCHOS A MUCHOS MUNICIPIO Y PROYECTOS


create table ciudad(
	id int ,
	nombre varchar(45) not null,
	constraint ciudad_pk primary key (id)
)
create table municipio( 
	id int ,
	nombre varchar(45),
	ciudad_id int ,
	constraint municipio_pk primary key(id),
	constraint municipio_fk foreign key(ciudad_id) references ciudad(id)
)

create table proyecto(
	id int ,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,
	constraint proyecto_pk primary key (id)
	
)
drop table proyecto_municipio
create table proyecto_municipio(
	proyecto_id int not null,
	municipio_id int ,
	
	constraint pproyecto_municipio_fk foreign key (proyecto_id) references proyecto(id),
	constraint proyecto_municipio_fk1 foreign key (municipio_id) references municipio(id),
	
	constraint proyecto_municipio_pk1 primary key (municipio_id,proyecto_id)
	
)




insert into ciudad values   (1,'Quito'),
							(2,'Ambato'),
							(3,'Guayaquil'),
							(4,'Machala'),
							(5,'Manta'),
							(6,'Loja'),
							(7,'Otavalo'),
							(8,'Cuenca'),
							(9,'Latacunga'),
							(10,'Tena');


insert into municipio values (1,'GAD MUNICIPAL QUITO',1),
							 (2,'GAD MUNICIPAL DE CUENCA',8),
							 (3,'GAD MUNICIPALIDAD DE AMBATO',2),
							 (4,'MUNICIPALIDAD DE MACAHALA ',4),
							 (5,'MUNIUCIPIO DE GUAYAQUIL',3),
							 (6,'MUNICIPIO DE OTAVALO',7),
							 (7,'MUNICIPIO DE LOJA',6),
							 (8,'MUNICIPIO DE MANTA',5),
							 (9,'MUNICIPIO DE LATACUNGA',9),
							 (10,'MUNICIPIO DE TENA',10);


insert into proyecto values (1,'Proyectos de Gestión Ambiental',9543.327,'10/02/2022','10/02/2023'),
							(2,'Proyectos en Fomento y Desarrollo Productivo',26553.264,'25/06/2022','10/08/2022'),
							(3,'Proyectos en Cambio Climático',1292.194,'01/02/2021','10/12/2023');
							

insert into proyecto_municipio values (1,5),
									  (3,5),
									  (1,2),
									  (2,1),
									  (1,4),
									  (2,9),
									  (1,10),
									  (3,6),
									  (1,3),
									  (2,7);
									  


select mu.nombre from municipio mu, proyecto pro, proyecto_municipio prom
where mu.id = prom.municipio_id
and pro.id = prom.proyecto_id


select pro.proyecto from  proyecto pro
where id in( select proyecto_id from proyecto_municipio where proyecto_id= 1)

select mu.nombre, count(prom.proyecto_id) from municipio mu,  proyecto_municipio prom
where mu.id= prom.municipio_id
group by(mu.nombre)

select mu.nombre, pro.proyecto from municipio mu, proyecto pro, proyecto_municipio prom
where mu.id = prom.municipio_id
and pro.id = prom.proyecto_id
and mu.nombre like '%GAD%'

select mu.nombre, min(prom.proyecto_id) from municipio mu,  proyecto_municipio prom
where mu.id= prom.municipio_id
group by( mu.nombre)

select municipio.nombre, ciudad.nombre from municipio, ciudad
where municipio.id= ciudad.id


select  pro.id ,pro.proyecto from proyecto pro
where id in(select municipio_id from proyecto_municipio where municipio_id = 3)

select mu.nombre ,max(prom.proyecto_id)  from municipio mu, proyecto_municipio prom
where mu.id= prom.proyecto_id
group by( mu.nombre)


