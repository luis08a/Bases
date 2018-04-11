/*Creación de foraneas */
alter table empleados add constraint fk_departamento foreign key(departamento) references departamentos(ID);

alter table empleadostrabajanensalas add constraint fk_empleado foreign key(empleado) references empleados(ID);

alter table empleadostrabajanensalas add constraint fk_empleadosala foreign key(sala) references salas(ID);

alter table colecciones add constraint fk_coleccionsala foreign key(sala) references salas(ID);

alter table colecciones add constraint fk_coleccionevento foreign key(evento) references eventos(ID);

alter table objetosdeexposicion add constraint fk_propietario foreign key(propietario) references propietarios(correo);

alter table objetosdeexposicion add constraint fk_objetocoleccion foreign key(coleccion) references colecciones(ID);

alter table obrasdearte add constraint fk_obraheredada foreign key(ID) references objetosdeexposicion(ID);

alter table obrasdearte add constraint fk_autor foreign key(autor) references autores(nombre);

alter table objetoshistoricos add constraint fk_objetoheredado foreign key(ID) references objetosdeexposicion(ID);

alter table categorias add constraint fk_categoriaevento foreign key(evento) references eventos(ID);

alter table patrocinadorpatrocinaeventos add constraint fk_patrocinadorTDoc foreign key(patrocinadorTipoDocumento, patrocinadorNumeroDocumento) references patrocinadores(tipoDeDocumento, numeroDeDocumento);

alter table patrocinadorpatrocinaeventos add constraint fk_eventopatrocinado foreign key(evento) references eventos(ID);

alter table boletas add constraint fk_eventoboleta foreign key(evento) references eventos(ID);

alter table suscripcionpermiteasistira add constraint fk_carneSuscripcionAsistencia foreign key(carneSuscripcion) references suscripciones(carne);

alter table suscripcionpermiteasistira add constraint fk_eventoAsistencia foreign key(evento) references eventos(ID);

alter table suscripciones add constraint fk_clienteTDoc foreign key(tipoDocumentoCliente, documentoCliente) references clientes(tipoDeDocumento, numeroDeDocumento);

alter table suscripciones add constraint fk_Plan foreign key(plan) references planes(nombre);

alter table pagos add constraint fk_carneSuscripcionPago foreign key(carneSuscripcion) references suscripciones(carne);