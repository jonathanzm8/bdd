create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	stock int not null,
	constraint productos_pk primary key (codigo)

)

create table proveedores(
	codigo int not null,
	nombre varchar(50) not null,
	telefono char(10) not null,
	constraint proveedores_pk primary key (codigo)
	
)
 create table productos_por_proveedor(
	 pp_codigo_producto int not null,
	 pp_codigo_proveedor int not null,
	 precio money  not null,
	 constraint producto_fk foreign key (pp_codigo_producto) references productos(codigo),
	 constraint proveedor_fk foreign key (pp_codigo_proveedor) references proveedores(codigo),
	 constraint productos_por_provvedor_pk primary key (pp_codigo_producto,pp_codigo_proveedor)
 )
 
 insert into productos(codigo, nombre,stock)
 values(100,'doritos',100);
  insert into productos(codigo, nombre,stock)
 values(200,'kchitos',200);
  insert into productos(codigo, nombre,stock)
 values(300,'papas',300);
  insert into productos(codigo, nombre,stock)
 values(400,'takis',0);
 
 select * from productos
  select * from proveedores
  
  select * from productos_por_proveedor
 
 insert into proveedores(codigo, nombre, telefono)
 values(1,'snacks sa','09977666');
  insert into proveedores(codigo, nombre, telefono)
 values(2,'districsnact','099854535');
 
 
 insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
 values(300,1,0.48);
  insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
 values(300,2,0.49);
   insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
 values(100,1,0.50);
   insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
 values(200,1,0.51);
   insert into productos_por_proveedor(pp_codigo_producto,pp_codigo_proveedor,precio)
 values(400,2,0.50);
 
 select pro.codigo, pro.nombre, prov.nombre, pp.precio from productos pro, proveedores prov , productos_por_proveedor pp
 where pp.pp_codigo_producto = pro.codigo 
 and pp.pp_codigo_producto = prov.codigo
 and pro.codigo= 300