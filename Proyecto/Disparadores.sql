/*Automatizacion*/
--Departamentos
create or replace trigger autoDep
before Insert on Departamentos
for each row
declare
    xConteo number;
    xMaximo number;
begin
    select count(*) into xConteo from Departamentos;
    IF xConteo>0 THEN 
        select max(ID) into xMaximo from Departamentos;
        :new.ID := xMaximo+1;
    ELSE  :new.ID := 1;
    END IF;
end;
/

--Empleados
create or replace trigger autoEmp
before Insert on Empleados
for each row
declare
    xConteo number;
    xMaximo number;
begin
    select count(*) into xConteo from Empleados;
    IF xConteo>0 THEN 
        select max(ID) into xMaximo from Empleados;
        :new.ID := xMaximo+1;
    ELSE  :new.ID := 1;
    END IF;
end;
/

--Salas
create or replace trigger autoSalas
before Insert on Salas
for each row
declare
    xConteo number;
    xMaximo number;
begin
    select count(*) into xConteo from Salas;
    IF xConteo>0 THEN 
        select max(ID) into xMaximo from Salas;
        :new.ID := xMaximo+1;
    ELSE  :new.ID := 1;
    END IF;
end;
/

--Colecciones
create or replace trigger autoColecciones
before Insert on Colecciones
for each row
declare
    xConteo number;
    xMaximo number;
begin
    select count(*) into xConteo from Colecciones;
    IF xConteo>0 THEN 
        select max(ID) into xMaximo from Colecciones;
        :new.ID := xMaximo+1;
    ELSE  :new.ID := 1;
    END IF;
end;
/

--ObjetosDeExposicion
create or replace trigger autoObjetosDeExposicion
before Insert on ObjetosDeExposicion
for each row
declare
    xConteo number;
    xMaximo number;
begin
    select count(*) into xConteo from ObjetosDeExposicion;
    IF xConteo>0 THEN 
        select max(ID) into xMaximo from ObjetosDeExposicion;
        :new.ID := xMaximo+1;
    ELSE  :new.ID := 1;
    END IF;
end;
/

--ObjetosHistoricos

--ObrasDeArtes

--Propietarios
create or replace trigger autoPropietarios
before Insert on Propietarios
for each row
declare
    xFecha date;
begin
    select current_date into xFecha from dual;
    :new.fechaDeAsociacion := xFecha;
end;
/

--Eventos
create or replace trigger autoEventos
before Insert on Eventos
for each row
declare
    xConteo number;
    xMaximo number;
begin
    select count(*) into xConteo from Eventos;
    IF xConteo>0 THEN 
        select max(ID) into xMaximo from Eventos;
        :new.ID := xMaximo+1;
    ELSE  :new.ID := 1;
    END IF;
end;
/

--Patrocinadores
create or replace trigger autoPatrocinadores
before Insert on Patrocinadores
for each row
declare
    xFecha date;
begin
    select current_date into xFecha from dual;
    :new.fechaDeVinculacion := xFecha;
end;
/

--Boletas
create or replace trigger autoBoletas
before Insert on Boletas
for each row
declare
    xConteo number;
    xMaximo number;
    xFecha date;
begin
    select current_date into xFecha from dual;
    :new.fecha := xFecha;
    select count(*) into xConteo from Boletas;
    IF xConteo>0 THEN 
        select max(ID) into xMaximo from Boletas;
        :new.ID := xMaximo+1;
    ELSE  :new.ID := 1;
    END IF;
end;
/

--permiteAsistirA
create or replace trigger autopermiteAsistirA
before Insert on permiteAsistirA
for each row
declare
    xFecha date;
begin
    select current_date into xFecha from dual;
    :new.fechaDeAsistencia := xFecha;
end;
/

--Suscripciones
create or replace trigger autoSuscripciones
before Insert on Suscripciones
for each row
declare
    xConteo number;
    xMaximo number;
begin
    select count(*) into xConteo from Suscripciones;
    IF xConteo>0 THEN 
        select max(carnet) into xMaximo from Suscripciones;
        :new.carnet := xMaximo+1;
    ELSE  :new.carnet := 1;
    END IF;
end;
/

--Pagos
create or replace trigger autoPagos
before Insert on Pagos
for each row
declare
    xConteo number;
    xMaximo number;
    xFecha date;
begin
    select current_date into xFecha from dual;
    :new.fechaDePago := xFecha;
    select count(*) into xConteo from Pagos;
    IF xConteo>0 THEN 
        select max(numeroDeSerie) into xMaximo from Pagos;
        :new.numeroDeSerie := xMaximo+1;
    ELSE  :new.numeroDeSerie := 1;
    END IF;
end;
/

--Planes

--Clientes
create or replace trigger autoClientes
before Insert on Clientes
for each row
declare
    xFecha date;
begin
    select current_date into xFecha from dual;
    :new.fechaDeVinculacion := xFecha;
end;
/