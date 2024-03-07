--- creacion de tabla producto

create table productos(
	codigo int not null,
	nombre varchar (50) not null,
	descripcion varchar (200) ,
	precio money not null,
	stock int not null,
	
	constraint producto_key primary key (codigo)
)