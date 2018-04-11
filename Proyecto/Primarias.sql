/*Creación de primarias*/
alter table Departamentos add constraint pk_departamentos PRIMARY KEY(ID);

alter table empleados add constraint pk_empleados primary key(ID);

alter table empleadostrabajanensalas add constraint pk_empleadostrabajanensalas primary key(empleado, sala);

alter table salas add constraint pk_salas primary key(ID);

alter table colecciones add constraint pk_colecciones primary key(ID);

alter table objetosdeexposicion add constraint pk_onjetosdeexposicion primary key(ID);

alter table obrasdearte add constraint pk_obrasdearte primary key(ID);

alter table objetoshistoricos add constraint pk_objetoshistoricos primary key(ID);

alter table propietarios add constraint pk_propietarios primary key(correo);

alter table autores add constraint pk_autores primary key(nombre);

alter table eventos add constraint pk_eventos primary key(ID);

alter table categorias add constraint pk_categorias primary key(evento, categoria);

alter table patrocinadorpatrocinaeventos add constraint pk_patrocinaciones primary key(patrocinadorTipoDocumento, patrocinadorNumeroDocumento, evento);

alter table patrocinadores add constraint pk_patrocinadores primary key(tipoDeDocumento, numeroDeDocumento);

alter table boletas add constraint pk_boletas primary key(ID);

alter table suscripcionpermiteasistira add constraint pk_suscripcionpermiteasistira primary key(carneSuscripcion, evento);

alter table suscripciones add constraint pk_suscripciones primary key(carne);

alter table pagos add constraint pk_pagos primary key(numeroDeSerie);

alter table clientes add constraint pk_clientes primary key(tipoDeDocumento, numeroDeDocumento);

alter table planes add constraint pk_planes primary key(nombre);