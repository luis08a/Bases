/*Creación de llaves unicas dentro de las tablas */
alter table departamentos add constraint uk_departamentosnombre unique(nombre);

alter table propietarios add constraint uk_propiestariostelefono unique(telefonoDeContacto);

alter table suscripciones add constraint uk_cNDcTDP unique(clienteNumeroDocumento,clienteTipoDeDocumento,plan);

alter table clientes add constraint uk_clientesCorreo unique(correo);