--creacion videojuegos

create table videojuegos(
	codigo int not null,
	nombre varchar(100) not null,
	descripcion varchar(300),
	valoracion int not null,
	
	constraint vedeojuegos_key primary key (codigo)
)

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(1,'juego1','juego de gerra',10)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(2,'juego2','juego de carros',20)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(3,'juego3','juego de aventura',30)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(4,'juego4','juego de razonamiento',40)
insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(5,'juego5','juego de combate',50)

insert into videojuegos(codigo,nombre,valoracion)
values(6,'juego6',10)
insert into videojuegos(codigo,nombre,valoracion)
values(7,'juego7',20)
insert into videojuegos(codigo,nombre,valoracion)
values(8,'juego8',30)

select * from videojuegos
select * from videojuegos where nombre like 'C%'

select * from videojuegos where valoracion 
between 9 and 10

select * from videojuegos where descripcion is null


update videojuegos set descripcion= 'mejor puntuado' where valoracion>9

