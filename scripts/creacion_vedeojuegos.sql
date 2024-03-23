--creacion videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	
	constraint vedeojuegos_key primary key (codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(1,'juego1','juego de gerra',10);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(2,'juego2','juego de carros',20);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(3,'juego3','juego de aventura',30);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(4,'juego4','juego de razonamiento',40);
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(5,'juego5','juego de combate',50);

insert into videojuegos(codigo,nombre,valoracion)
values(6,'juego6',10);
insert into videojuegos(codigo,nombre,valoracion)
values(7,'juego7',20);
insert into videojuegos(codigo,nombre,valoracion)
values(8,'juego8',30)
insert into videojuegos(codigo,nombre,valoracion)
values(9,'corazon de acero',30)
insert into videojuegos(codigo,nombre,valoracion)
values(10,'dados',10)
insert into videojuegos(codigo,nombre,valoracion)
values(11,'god of war',30)

select * from videojuegos
select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion 
between 9 and 10

select * from videojuegos where descripcion is null


update videojuegos set descripcion= 'mejor puntuado' where valoracion>9

delete from videojuegos where valoracion>7

select * from videojuegos where nombre like 'c' or valoracion= 7

select * from videojuegos where (codigo= 3 and  codigo = 7 ) or valoracion= 7

select * from videojuegos where (valoracion > 7 and nombre like 'C') or (valoracion> 8 and nombre like 'D')

select * from videojuegos
select * from plataforma

create table plataforma(
	id_plataforma int,
	nombre_plataforma varchar(50),
	codigo_videojuego int,
	
	constraint plataforma_key primary key (id_plataforma)
	
)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(12,'plataforma nose',1)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(13,'plataforma de guerra',11)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(14,'plataforma peleas',11)
insert into plataforma(id_plataforma, nombre_plataforma, codigo_videojuego)
values(15,'plataforma carros',8)
-- foreing key 
alter table plataforma
add constraint palataforma_videojuego_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)


select video.nombre, video.descripcion , video.valoracion, pla.nombre_plataforma from plataforma pla, videojuegos video
where video.descripcion = 'juego de gerra' 

select pla.id_plataforma,pla.nombre_plataforma, pla.codigo_videojuego from plataforma pla, videojuegos video
where video.codigo = 11


select  video.codigo ,count(id_plataforma) as tatal from plataforma , videojuegos video
group by(codigo)

select round(avg(valoracion),2) as valoracion_promedio from videojuegos

