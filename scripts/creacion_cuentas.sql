-- creacion de tabla cuentas
delete  from cuentas
drop table cuentas
create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null, 
	
	constraint cuentas_key primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cuenta)
values('12345','09876','2022/08/27',200,'1234576890')
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cuenta)
values('12335','03476','2022/08/25',100,'1105232977')
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo,usuario_cuenta)
values('12789','03476','12/08/22',100,'1105232977')
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('18745','09096','02/03/23',400)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('23345','11876','2022/08/21',500)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12455','09566','26/07/24',600)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12245','09346','10/08/24',700)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12555','09855','2023/09/21',800)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12445','09576','22/10/24',900)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12098','11876','28/09/24',100)

select * from cuentas

select numero_cuenta, saldo from cuentas

select * from cuentas where fecha_creacion
between '07/03/2024' and '07/01/2024'

select numero_cuenta, saldo from cuentas where fecha_creacion
between '07/03/2024' and '07/01/2024'

update cuentas set saldo=10 where cedula_propietario like '17%'

delete from cuentas where cedula_propietario like '10%'

select * from cuentas where saldo>money(100) and saldo<money(1000)

select * from cuentas where fecha_creacion = '10/02/2024' and fecha_creacion= '10/02/2023'

select * from cuentas where saldo=money(0) or cedula_propietario like '%2' 

-- agragar la columna usuario_cuenta en la tabla cuenta 
alter table cuentas
add column usuario_cuenta varchar(20) not null

select * from usuario
-- creacion de la tabla usuario
create table usuario(
	
	cedula char(10),
	nombre varchar(25),
	apellido varchar(25),
	Tipo_cuenta varchar(20),
	limite_credito decimal(10,2),
	
	constraint usuario_pk primary key (cedula)
)
insert into usuario(cedula,nombre, apellido,tipo_cuenta,limite_credito)
values('1234576890','jonathan','perez','corriente',12.3);
insert into usuario(cedula,nombre, apellido,tipo_cuenta,limite_credito)
values('1105232977','jonathan','perez','corriente',12.3);
select * from usuario

-- creacion de foreing key 
alter table cuentas
add constraint cuentas_usuario_fk 
foreign key (usuario_cuenta)
references usuario(cedula)
