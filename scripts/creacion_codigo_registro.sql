-- creacion resgistro-entrada

create table registro_entrada(
	codigo_registro int not null,
	cedula_empleado char (10) not null,
	fecha date not null,
	hora date not null,
	
	constraint registro_entrada_key primary key(codigo_registro)
)