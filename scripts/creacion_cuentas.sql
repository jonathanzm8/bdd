-- creacion de tabla cuentas

create table cuentas(
	numero_cuenta char(5) not null,
	cedula_propietario char(5) not null,
	fecha_creacion date not null,
	saldo money not null, 
	
	constraint cuentas_key primary key (numero_cuenta)
)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12345','09876','22/03/22',200)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12335','03476','12/08/22',100)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12323','09236','08/03/22',300)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('18745','09096','02/03/23',400)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('23345','11876','04/08/24',500)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12455','09566','26/07/24',600)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12245','09346','10/08/24',700)
insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values('12555','09855','22/09/22',800)
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