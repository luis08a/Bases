/*AUTOMATIZACION*/
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
    xCosto number;
begin
    select planes.valor into xCosto from Suscripciones join Planes on (Suscripciones.plan = Planes.nombre and Suscripciones.carnet = :new.carnetSuscripcion);
    if(:new.valor <> xCosto) then 
        RAISE_APPLICATION_ERROR(-20001,'No se puede generar un pago, por un valor distinto al del plan.');
    end if;
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

/*MODIFICACION*/
--Clientes
create or replace trigger modClientes
before update of fechaDeVinculacion on Clientes
for each row
begin
    RAISE_APPLICATION_ERROR(-20001,'No se puede moficicar la fecha de vinculacion de un cliente.');
end;
/

--Patrocinadores
create or replace trigger modPatrocinadores
before update of fechaDeVinculacion on Patrocinadores
for each row
begin
    RAISE_APPLICATION_ERROR(-20001,'No se puede moficicar la fecha de vinculacion de un patrocinador.');
end;
/

--Departamentos

--Empleados

--Autores
create or replace trigger modAutores
before update of fechaDeNacimiento on Autores
for each row
begin
    RAISE_APPLICATION_ERROR(-20001,'No se puede moficicar la fecha de nacimiento de un autor.');
end;
/

--Salas
create or replace trigger modSalas
before update on Salas

for each row
declare 
    aAltura number;
    bAltura number;
    aArea number;
    bArea number;
begin
    select :old.areaDisponible into aArea from dual;
    select :old.altura into aAltura from dual;
    select :new.areaDisponible into bArea from dual;
    select :new.altura into bAltura from dual;
    if(aAltura <> bAltura) then 
        RAISE_APPLICATION_ERROR(-20001,'No se puede moficicar altura de una sala.');
    end if;
    if(aArea > bArea) then
        RAISE_APPLICATION_ERROR(-20001,'El area actualizada no puede ser menor a la original.');
    end if;
end;
/

--Boletas
create or replace trigger modBoletas
before update of fecha on Boletas
for each row
begin
    RAISE_APPLICATION_ERROR(-20001,'No se puede moficicar la fecha de una boleta.');
end;
/

--Suscripciones
create or replace trigger modSuscripciones
before update on Suscripciones
for each row
begin
    if(:old.carnet <> :new.carnet) then 
        RAISE_APPLICATION_ERROR(-20001,'No se puede moficicar el carnet de una suscripcion.');
    end if;
    if(:new.estadoDeCuenta<>1 and :new.estadoDeCuenta<>0) then 
        RAISE_APPLICATION_ERROR(-20001,'El estado de una suscripcion solo puede tener los valores 1 o 0.');
    end if;
    
end;
/

--Pagos
create or replace trigger modPagos
before update on Pagos
for each row
begin
    
    RAISE_APPLICATION_ERROR(-20001,'No se pueden moficicar los pagos.');
end;
/

--Planes
create or replace trigger modPlanes
before update on Planes
for each row
begin
    if(:new.valor<5000) then
        RAISE_APPLICATION_ERROR(-20001,'No pueden existir planes que valgan menos de $5000.');
    end if;
end;
/

/*ELIMINACION.*/
--Clientes
create or replace trigger eliClientes
before delete on Clientes
for each row
declare
    xEstadosInactivos number;
begin
    select count(*) into xEstadosInactivos from Suscripciones where :old.tipoDeDocumento = Suscripciones.clienteTipoDeDocumento and :old.numeroDeDocumento = Suscripciones.clienteNumeroDocumento and Suscripciones.estadoDeCuenta=0;
    if(xEstadosInactivos>=1) then 
        RAISE_APPLICATION_ERROR(-20001,'No pueden existir planes que valgan menos de $5000.');
    end if;
end;
/

--Patrocinadores
/*create or replace trigger eliPatrocinador
before Delete on Patrocinadores
for each row
declare
    FechaActual date;
    QEventos number;
begin 
    select CURRENT_DATE into FechaActual from Patrocinadores;
    select count(*) into QEventos from Patrocinaciones join Eventos having 
*/


--Departamentos
/*create or replace trigger eliDepartamentos
before delete on Departamentos
for each row
declare
    xTemporalID number;
begin
    select ID into xTemporalID from Departamentos where nombre='Temporal';
    update Empleados set Empleados.Departamento = xTemporalID where Empleados.departamento=:old.id;
end;
/*/

--Autores 
create or replace trigger eliAutores
before delete on Autores 
for each row
begin
    RAISE_APPLICATION_ERROR(-20001,'No se permite la eliminación de los autores.');
end;
/

--Boletas
create or replace trigger eliBoletas
before delete on Boletas 
for each row
begin
    RAISE_APPLICATION_ERROR(-20001,'No se permite la eliminación de las boletas.');
end;
/

--Pagos
create or replace trigger eliPagos
before delete on Pagos 
for each row
begin
    RAISE_APPLICATION_ERROR(-20001,'No se permite la eliminación de pagos.');
end;
/