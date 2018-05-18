/*Tuplas*/
--Autores
alter table Autores add constraint ck_fechasAutores check (fechaDeNacimiento<fechaDeMuerte);

--Eventos
alter table Eventos add constraint ck_fechasEventos check (fechaInicio<fechaFin);