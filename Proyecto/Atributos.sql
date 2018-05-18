--Atributos
--Departamentos
alter table Departamentos add constraint ck_depid check(ID>=1 and ID<=9999);

--Empleados
alter table Empleados add constraint ck_empid check(ID>=1 and ID<=99999);

--EmpleadosTrabajanEnSalas

--Sala
alter table Salas add constraint ck_salid check(ID>=1 and ID<=9999);
alter table Salas add constraint ck_ares check(areaDisponible > 0);
alter table Salas add constraint ck_alts check(altura>=5 and altura<=10);

--Colecciones
alter table Colecciones add constraint ck_colid check(ID>=1 and ID<=9999);

--Objetos de exposición
alter table ObjetosDeExposicion add constraint ck_objeid check(ID>=1 and ID<=99999);
alter table ObjetosDeExposicion add constraint ck_objearea check(area>0);
alter table ObjetosDeExposicion add constraint ck_objealtura check(altura>0 and altura<10);

--Objetos Historicos
alter table ObjetosHistoricos add constraint ck_objhid check(ID>=1 and ID<=99999);

--Obras de arte
alter table ObrasDeArte add constraint ck_obraid check(ID>=1 and ID<=99999);

--Autores


--Propietarios
alter table Propietarios add constraint ck_correo check(correo like '%@%.%' and correo not like '%@%@%');


--Eventos
alter table Eventos add constraint ck_evenid check(ID>=1 and ID<=99999);

--Patrocina
alter table Patrocina add constraint ck_montpatro check(monto>0);

--Patrocinadores

--Boletas
alter table Boletas add constraint ck_boletaid check(ID>=1 and ID<=99999);
alter table Boletas add constraint ck_precioBol check(precio>0);

--permiteAsistirA

--Suscripciones
alter table Suscripciones add constraint ck_estado check(estadoDeCuenta=0 or estadoDeCuenta=1);

--Pagos
alter table pagos add constraint ck_pagosid check(numeroDeSerie>=1 and numeroDeSerie<=999999999);
alter table pagos add constraint ck_valorpag check(valor>0);

--Planes
alter table planes add constraint ck_valorplan check(valor>=5000);

--Cliente
alter table Clientes add constraint ck_clientecorreo check(correo like '%@%.%' and correo not like '%@%@%');
