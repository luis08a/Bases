/*Creación de primarias*/
alter table Departamentos add constraint pk_departamentos PRIMARY KEY(ID);

alter table empleados add constraint pk_empleados primary key(ID);

alter table empleadosTrabajanEnSalas add constraint pk_empleadosTrabajanEnSalas primary key(empleado, sala);

alter table salas add constraint pk_salas primary key(ID);

alter table colecciones add constraint pk_colecciones primary key(ID);

alter table objetosDeExposicion add constraint pk_onjetosdeexposicion primary key(ID);

alter table obrasDeArte add constraint pk_obrasDeArte primary key(ID);

alter table objetosHistoricos add constraint pk_objetosHistoricos primary key(ID);

alter table propietarios add constraint pk_propietarios primary key(correo);

alter table autores add constraint pk_autores primary key(nombre,paisDeOrigen);

alter table eventos add constraint pk_eventos primary key(ID);

alter table patrocina add constraint pk_patrocina primary key(evento, tipoDeDocumentoPatrocinador, numeroDeDocumentoPatrocinador);

alter table patrocinadores add constraint pk_patrocinadores primary key(tipoDeDocumento, numeroDeDocumento);

alter table boletas add constraint pk_boletas primary key(ID);

alter table permiteAsistirA add constraint pk_permiteAsistirA primary key(carnet, evento);

alter table suscripciones add constraint pk_suscripciones primary key(carnet);

alter table pagos add constraint pk_pagos primary key(numeroDeSerie);

alter table clientes add constraint pk_clientes primary key(tipoDeDocumento, numeroDeDocumento);

alter table planes add constraint pk_planes primary key(nombre);