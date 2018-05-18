--CRUDI

/*CRUD Clientes*/
CREATE OR REPLACE PACKAGE   BODY PC_Clientes IS
    PROCEDURE AD_CLIENTE ( C_tipoDoc IN VARCHAR, C_nDoc IN VARCHAR, C_correo IN VARCHAR) IS
    BEGIN
        INSERT INTO CLIENTES (tipoDeDocumento, numeroDeDocumento, correo) VALUES (C_tipoDoc, C_nDoc, C_correo);
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al insertar el cliente.');
    END;
    PROCEDURE EL_CLIENTE ( C_tipoDoc IN VARCHAR, C_nDoc IN VARCHAR) IS
    BEGIN
        DELETE FROM CLIENTES WHERE tipoDeDocumento = C_tipoDoc and numeroDeDocumento = C_nDoc;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al eliminar el cliente.');
    END;
    PROCEDURE MOD_CORREOCLIENTE ( C_tipoDoc IN VARCHAR, C_nDoc IN VARCHAR, C_correo IN VARCHAR) IS
    BEGIN
        UPDATE CLIENTES set correo=C_correo where C_tipoDoc=tipoDeDocumento and C_nDoc=numeroDeDocumento;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al actualizar el correo del cliente.');
    END;
    FUNCTION CO_PLANES RETURN SYS_REFCURSOR IS CON_PLANES_CLIENTE SYS_REFCURSOR;
    BEGIN
    OPEN CON_PLANES_CLIENTE FOR
        SELECT * FROM PLANES;
    RETURN CON_PLANES_CLIENTE;
    END;
    FUNCTION CO_EVENTOS RETURN SYS_REFCURSOR IS CON_EVENTOS_CLIENTE SYS_REFCURSOR;
    BEGIN
    OPEN CON_EVENTOS_CLIENTE FOR
        SELECT nombre, fechaInicio, fechaFin, detalles FROM EVENTOS;
    RETURN CON_EVENTOS_CLIENTE;
    END;
END PC_Clientes;


/*CRUD Patrocinador*/
CREATE OR REPLACE PACKAGE BODY PC_PATROCINADORES IS
    PROCEDURE AD_PATROCINADOR (P_tipoDoc IN VARCHAR, P_nDoc IN VARCHAR, P_nombre IN VARCHAR) IS
    BEGIN
        INSERT INTO PATROCINADOR (tipoDeDocumento, numeroDeDocumento, nombre) VALUES (P_tipoDoc, P_nDoc, P_nombre);
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al insertar el patrocinador.');
    END;
    
    PROCEDURE EL_PATROCINADOR (P_tipoDoc IN VARCHAR, P_nDoc IN VARCHAR) IS
    BEGIN
        DELETE FROM CLIENTES WHERE tipoDeDocumento = P_tipoDoc and numeroDeDocumento = P_nDoc;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al eliminar el patrocinador.');
    END;
    FUNCTION CO_EVENTOS RETURN SYS_REFCURSOR IS CON_EVENTOS_PATROCINADORES SYS_REFCURSOR;
    BEGIN
    OPEN CON_EVENTOS_CLIENTE FOR
        SELECT nombre, fechaInicio, fechaFin, detalles FROM EVENTOS;
    RETURN CON_EVENTOS_CLIENTE;
    END;
    FUNCTION CO_MAYORPATROCINIO RETURN SYS_REFCURSOR IS MAYORPATROCINIO SYS_REFCURSOR;
    BEGIN
    OPEN MAYORPATROCINIO FOR
        SELECT Patrocinador.nombre from Patrocinadores join Patrocina ON (Patrocinadores.tipoDeDocumento=tipoDeDocumentoPatrocinador and numeroDeDocumentoPatrocinador=numeroDeDocumento) group by Patrocinadores.nombre having max(monto)=(select max(monto) from patrocina);
    RETURN CON_EVENTOS_CLIENTE;
    END;
END PC_PATROCINADOR;


/*CRUD Empleado*/
CREATE OR REPLACE PACKAGE BODY PC_Empleados IS
    PROCEDURE AD_DEPARTAMENTO (DEP_nombre IN VARCHAR, DEP_Desc IN VARCHAR) IS
    BEGIN
        INSERT INTO DEPARTAMENTO (nombre, descripcion) VALUES (DEP_nombre, DEP_Desc);
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al insertar el departamento.');
    END;
    PROCEDURE AD_EMPLEADO (EMP_nombres IN VARCHAR, EMP_apellidos IN VARCHAR, EMP_tel IN VARCHAR, emp_cargo IN VARCHAR, EMP_DEP IN NUMBER) IS
    BEGIN
        INSERT INTO EMPLEADOS (nombres, apellidos, telefono, cargo) VALUES (EMP_nombres, EMP_apellidos, EMP_tel, emp_cargo, EMP_DEP);
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al insertar el empleado.');
    END;
    PROCEDURE AD_empleadoTrabajaEnSala(emp_id in varchar, sala_id in NUMBER) IS
    BEGIN
        INSERT INTO empleadosTrabajanEnSalas (empleado, sala) VALUES (emp_id, sala_id);
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al asignar la sala al empleado.');
    END;
    PROCEDURE EL_DEPARTAMENTO (DEP_ID in number) IS
    BEGIN
        DELETE FROM DEPARTAMENTOS WHERE id=DEP_ID;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al eliminar el departamento.');
    END;
    PROCEDURE EL_EMPLEADO (EMP_ID IN VARCHAR) IS
    BEGIN
        DELETE FROM EMPLEADOS WHERE ID=EMP_ID;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al eliminar al empleado.');
    END;
    PROCEDURE EL_EMPLEADOTRABAJAENSALA (EMP_ID IN NUMBER, SALA_ID IN NUMBER) IS
    BEGIN
        DELETE FROM empleadosTrabajanEnSalas WHERE empleado=EMP_ID and sala = SALA_ID;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al eliminar la asignación.');
    END;
    PROCEDURE MOD_TELEFONOEMPLEADO (EMP_ID IN NUMBER, EMP_TELEFONO IN VARCHAR) IS
    BEGIN
        UPDATE empleados set telefono=emp_telefono where emp_id=id;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al actualizar el telefono del empleado.');
    END;
    PROCEDURE MOD_CARGOEMPLEADO (EMP_ID IN NUMBER, EMP_CARGO IN VARCHAR) IS
    BEGIN
        UPDATE empleados set telefono=emp_telefono where emp_id=id;
        COMMIT;
        EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            RAISE_APPLICATION_ERROR(-20010, 'Error al actualizar el telefono del empleado.');
    END;
    FUNCTION CO_EMPLEADOS RETURN SYS_REFCURSOR;
    FUNCTION CO_DEPARTAMENTOS RETURN SYS_REFCURSOR;
    FUNCTION CO_EMPXDEP RETURN SYS_REFCURSOR;
    FUNCTION CO_EMPXSALA RETURN SYS_REFCURSOR;
END PC_Empleados;