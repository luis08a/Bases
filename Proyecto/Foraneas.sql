/*Creación de foraneas */
alter table empleados add constraint fk_empleadoADepartamento foreign key(departamento) references departamentos(ID);

alter table empleadosTrabajanEnSalas add constraint fk_ETSAEmpleados foreign key(empleado) references empleados(ID);

alter table empleadostrabajanensalas add constraint fk_ETSASalas foreign key(sala) references salas(ID);

alter table colecciones add constraint fk_coleccionASala foreign key(sala) references salas(ID);

alter table colecciones add constraint fk_coleccionAEvento foreign key(evento) references eventos(ID);

alter table objetosDeExposicion add constraint fk_OEApropietario foreign key(propietario) references propietarios(correo);

alter table objetosDeExposicion add constraint fk_OEAColeccion foreign key(coleccion) references colecciones(ID);

alter table obrasDeArte add constraint fk_obraHeredada foreign key(ID) references objetosdeexposicion(ID);

alter table obrasdeArte add constraint fk_obraDeArteAAutor foreign key(nombreAutor,paisAutor) references autores(nombre,paisDeOrigen);

alter table objetosHistoricos add constraint fk_objetoHeredado foreign key(ID) references objetosDeExposicion(ID);

alter table patrocina add constraint fk_patrocinadorTDoc foreign key(tipoDeDocumentoPatrocinador, numeroDeDocumentoPatrocinador) references patrocinadores(tipoDeDocumento, numeroDeDocumento);

alter table patrocina add constraint fk_eventopatrocinado foreign key(evento) references eventos(ID);

alter table boletas add constraint fk_eventoboleta foreign key(evento) references eventos(ID);

alter table permiteAsistirA add constraint fk_carnetAsistencia foreign key(carnet) references suscripciones(carnet);

alter table permiteAsistirA add constraint fk_eventoAsistencia foreign key(evento) references eventos(ID);

alter table suscripciones add constraint fk_clienteTDoc foreign key(clienteNumeroDocumento, clienteTipoDeDocumento) references clientes(tipoDeDocumento, numeroDeDocumento);

alter table suscripciones add constraint fk_suscripcionAPlan foreign key(plan) references planes(nombre);

alter table pagos add constraint fk_carneSuscripcionPago foreign key(carnetSuscripcion) references suscripciones(carnet);