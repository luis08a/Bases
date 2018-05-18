/*CRUD Clientes*/
CREATE OR REPLACE PACKAGE PC_Clientes IS
    PROCEDURE AD_CLIENTE ( C_tipoDoc IN VARCHAR, C_nDoc IN VARCHAR, C_correo IN VARCHAR);
    PROCEDURE EL_CLIENTE ( C_tipoDoc IN VARCHAR, C_nDoc IN VARCHAR);
    PROCEDURE MOD_CORREOCLIENTE ( C_tipoDoc IN VARCHAR, C_nDoc IN VARCHAR, C_correo IN VARCHAR);
    FUNCTION CO_CLIENTE RETURN SYS_REFCURSOR;
    FUNCTION CO_PLANES RETURN SYS_REFCURSOR;
    FUNCTION CO_EVENTOS RETURN SYS_REFCURSOR;
END PC_Clientes;

/*CRUD Patrocinador*/
CREATE OR REPLACE PACKAGE PC_PATROCINADORES IS
    PROCEDURE AD_PATROCINADOR (P_tipoDoc IN VARCHAR, P_nDoc IN VARCHAR, P_nombre IN VARCHAR);
    PROCEDURE EL_PATROCINADOR (P_tipoDoc IN VARCHAR, P_nDoc IN VARCHAR);
    PROCEDURE MOD_NOMBREPATROCINADOR (P_tipoDoc IN VARCHAR, P_nDoc IN VARCHAR, P_nombre IN VARCHAR);
    FUNCTION CO_EVENTOS RETURN SYS_REFCURSOR;
    FUNCTION CO_PATROCINIOS RETURN SYS_REFCURSOR;
    FUNCTION CO_MAYORPATROCINIO RETURN SYS_REFCURSOR;
END PC_PATROCINADOR;

/*CRUD Empleado*/
CREATE OR REPLACE PACKAGE PC_Empleados IS
    PROCEDURE AD_DEPARTAMENTO (DEP_nombre IN VARCHAR, DEP_Desc IN VARCHAR);
    PROCEDURE AD_EMPLEADO (EMP_nombres IN VARCHAR, EMP_apellidos IN VARCHAR, EMP_tel IN VARCHAR, emp_cargo IN VARCHAR, EMP_DEP IN NUMBER);
    PROCEDURE AD_empleadoTrabajaEnSala(emp_id in varchar, sala_id in NUMBER);
    PROCEDURE EL_DEPARTAMENTO (DEP_ID in number);
    PROCEDURE EL_EMPLEADO (EMP_ID IN VARCHAR);
    PROCEDURE EL_EMPLEADOTRABAJAENSALA (EMP_ID IN NUMBER, SALA_ID IN NUMBER);
    PROCEDURE MOD_NOMBRESEMPLEADO (EMP_ID IN NUMBER, EMP_NOMBRES IN VARCHAR);
    PROCEDURE MOD_APELLIDOSEMPLEADO (EMP_ID IN NUMBER, EMP_APELLIDOS IN VARCHAR);
    PROCEDURE MOD_TELEFONOEMPLEADO (EMP_ID IN NUMBER, EMP_TELEFONO IN VARCHAR);
    PROCEDURE MOD_CARGOEMPLEADO (EMP_ID IN NUMBER, EMP_CARGO IN VARCHAR);
    PROCEDURE MOD_NOMBREDEPARTAMENTO (DEP_ID IN NUMBER, DEP_NOMBRE IN VARCHAR);
    PROCEDURE MOD_DESCRIPCIONDEPARTAMENTO (DEP_ID IN NUMBER, DEP_DESCRIPCION IN VARCHAR);
    FUNCTION CO_EMPLEADOS RETURN SYS_REFCURSOR;
    FUNCTION CO_DEPARTAMENTOS RETURN SYS_REFCURSOR;
    FUNCTION CO_EMPXDEP RETURN SYS_REFCURSOR;
    FUNCTION CO_EMPXSALA RETURN SYS_REFCURSOR;
END PC_Empleados;

/*CRUD Objeto de exposicion*/
CREATE OR REPLACE PACKAGE PC_Objeto IS
    PROCEDURE AD_PROPIETARIO (prop_correo IN VARCHAR , PROp_NOMBRE IN VARCHAR, PROp_TELEFONO IN VARCHAR);
    PROCEDURE AD_AUTOR (AUT_NOMBRE IN VARCHAR , AUT_PAISORIGEN IN VARCHAR, AUT_FECHANACIMIENTO IN DATE, AUT_FECHAMUERTE IN DATE);
    PROCEDURE AD_OBJETODEEXPOSICION (OBEX_FECHAORIGEN IN DATE, OBEX_NOMBRE IN VARCHAR, OBEX_AREA IN NUMBER, OBEX_ALTURA IN NUMBER, OBEX_COLECCION IN NUMBER);
    PROCEDURE AD_OBJETOHISTORICO (OBHI_IDOBEX IN NUMBER , OBHI_PERIODOHISTORICO IN VARCHAR, OBHI_HISTORIA IN VARCHAR);
    PROCEDURE AD_OBRAARTE (OBAR_IDOBEX IN NUMBER, OBAR_ESTILO IN VARCHAR, OBAR_TEMATICA IN VARCHAR, OBAR_DESCRIPCION IN VARCHAR, OBAR_NOMBREAUTOR IN VARCHAR, OBAR_PAISAUTOR IN VARCHAR);
    PROCEDURE EL_PROPIETARIO (PROP_CORREO IN VARCHAR);
    PROCEDURE EL_AUTOR (AUT_NOMBRE IN VARCHAR, AUT_PAISORIGEN IN VARCHAR);
    PROCEDURE EL_OBJETOEXPOSICION (OBEX_ID IN NUMBER);
    PROCEDURE EL_OBJETOHISTORICO (OBHI_ID IN NUMBER);
    PROCEDURE EL_OBRAARTE (OBAR_ID IN NUMBER);
    PROCEDURE MOD_NOMBREPROP (PROP_CORREO IN VARCHAR, PROP_NOMBRE IN VARCHAR);
    PROCEDURE MOD_TELEFONOPROP (PROP_CORREO IN VARCHAR, PROP_TEL IN VARCHAR);
    PROCEDURE MOD_FECHAMUERTEAUT (AUT_NOMBRE IN VARCHAR, AUT_PAISORIGEN IN VARCHAR, AUT_MUERTE IN DATE);
    PROCEDURE MOD_NOMBREOBJETOEXPOSICION (OBEX_ID IN NUMBER, OBEX_NOMBRE IN VARCHAR);
    PROCEDURE MOD_FECHAORIGENOBJETOEXPOSICION (OBEX_ID IN NUMBER, OBEX_FECHAORIGEN IN DATE);
    PROCEDURE MOD_AREAOBJETOEXPOSICION (OBEX_ID IN NUMBER, OBEX_AREA IN NUMBER);
    PROCEDURE MOD_ALTURAOBJETOEXPOSICION (OBEX_ID IN NUMBER, OBEX_ALTURA IN NUMBER);
    PROCEDURE MOD_PERIODOHISTORICOOBJETOHISTORICO (OBHI_ID IN NUMBER, OBHI_PERIODOHISTORICO IN VARCHAR);
    PROCEDURE MOD_HISTORIAOBJETOHISTORICO (OBHI_ID IN NUMBER, OBHI_HISTORIA IN VARCHAR);
    PROCEDURE MOD_ESTILOOBRAARTE (OBAR_ID IN NUMBER, OBAR_ESTILO IN VARCHAR);
    PROCEDURE MOD_TEMATICAOBRAARTE (OBAR_ID IN NUMBER, OBAR_TEMATICA IN VARCHAR);
    PROCEDURE MOD_DESCRIPCIONOBRAARTE (OBAR_ID IN NUMBER, OBAR_DESCRIPCION IN VARCHAR);
    FUNCTION CO_AUTORES RETURN SYS_REFCURSOR;
    FUNCTION CO_OBJETOSDEEXPOSICION RETURN SYS_REFCURSOR;
    FUNCTION CO_PROPIETARIOS RETURN SYS_REFCURSOR;
    FUNCTION CO_OBRASDEARTE RETURN SYS_REFCURSOR;
    FUNCTION CO_OBJETOSHISTORICOS RETURN SYS_REFCURSOR;
    FUNCTION CO_MAYORAUTORPORPAIS (C_PAIS IN DATE) RETURN SYS_REFCURSOR;
    FUNCTION CO_OBJETOEXPOSICICONMASANTIGU RETURN SYS_REFCURSOR;
    FUNCTION CO_PROPIETARIOMAYORITARIO RETURN SYS_REFCURSOR;
END PC_Objeto;

/*CRUD evento*/
CREATE OR REPLACE PACKAGE PC_EVENTO IS 
    PROCEDURE AD_SALA (SALA_AREA IN NUMBER, SALA_ALTURA IN NUMBER);
    PROCEDURE AD_COLECCION (COL_NOMBRE IN VARCHAR, COL_DESCRIPCION IN VARCHAR, COL_SALA IN NUMBER);
    PROCEDURE AD_EVENTO (EVN_NOMBRE IN VARCHAR, EVN_FECHAINICIO IN DATE, EVN_FECHAFIN IN DATE, EVN_DETALLES IN XMLType);
    PROCEDURE AD_BOLETAS (BOL_PRECIO IN NUMBER);
    PROCEDURE AD_PATROCINA (PAT_TDOC IN VARCHAR,PAT_NDOC IN VARCHAR, EVN_ID IN NUMBER, PATROCINA_MONTO IN NUMBER);
    PROCEDURE AD_PERMITEASISTENCIA (EVN_ID IN NUMBER, SUSC_CARNET IN NUMBER);
    PROCEDURE EL_SALA (SALA_ID IN NUMBER);
    PROCEDURE EL_COLECCION(COL_ID IN NUMBER);
    PROCEDURE EL_EVENTOS (EVN_ID IN NUMBER);
    PROCEDURE EL_PATROCINA (PAT_TDOC IN VARCHAR, PAT_NDOC IN VARCHAR, EVN_ID IN NUMBER);
    PROCEDURE MOD_NOMBREEVENTO (EVN_ID IN NUMBER, EVN_NOMBRE IN VARCHAR);
    PROCEDURE MOD_FECHAINICIOEVENTO (EVN_ID IN NUMBER, EVN_FECHAINICIO IN DATE);
    PROCEDURE MOD_FECHAFINEVENTO (EVN_ID IN NUMBER, EVN_FECHAFIN IN DATE);
    PROCEDURE MOD_DETALLESEVENTO (EVN_ID IN NUMBER, EVN_DETALLES IN XMLType);
    PROCEDURE MOD_NOMBRECOLECCION (COL_ID IN NUMBER, COL_NOMBRE IN VARCHAR);
    PROCEDURE MOD_DESCRIPCIONCOLECCION (COL_ID IN NUMBER, COL_DESCRIPCION IN DATE);
    PROCEDURE MOD_ALTURASALA (SALA_ID IN NUMBER, SALA_ALTURA IN NUMBER);
    PROCEDURE MOD_AREASALA (SALA_ID IN NUMBER, SALA_ALTURA IN NUMBER);
    FUNCTION CO_SALAS RETURN SYS_REFCURSOR;
    FUNCTION CO_EVENTOS RETURN SYS_REFCURSOR;
    FUNCTION CO_COLECCIONES RETURN SYS_REFCURSOR;
    FUNCTION CO_BOLETAS RETURN SYS_REFCURSOR;
    FUNCTION CO_PERMITEASISTIRA RETURN SYS_REFCURSOR;
    FUNCTION CO_PATROCINA RETURN SYS_REFCURSOR;
    FUNCTION CO_BOLXDIA (FECHA IN DATE) RETURN SYS_REFCURSOR;
    FUNCTION CO_SALACONMAYORCANTIDAD RETURN SYS_REFCURSOR;
END PC_EVENTOS;

/*CRUD Suscripciones*/
CREATE OR REPLACE PACKAGE PC_SUSCRIPCIONES IS
    PROCEDURE AD_PLAN (PLN_NOMBRE IN VARCHAR, PLN_DESCRIPCCION IN VARCHAR, PLN_VALOR IN NUMBER);
    PROCEDURE AD_SUSCRIPCION (SUS_C_TDOC IN VARCHAR, SUS_C_NDOC IN VARCHAR, SUS_PLN_NOMBRE IN VARCHAR);
    PROCEDURE AD_PAGO (PAG_VALOR IN NUMBER, PAG_SUS_CARNET IN NUMBER);
    PROCEDURE EL_PLAN (PLN_NOMBRE IN VARCHAR);
    PROCEDURE EL_SUSCRIPCION (SUS_CATNET IN NUMBER);
    PROCEDURE MOD_DESCRIPCIONPLAN (PLN_NOMBRE IN VARCHAR, PLN_DESCRIPCION IN VARCHAR);
    PROCEDURE MOD_VALORPLAN (PLN_NOMBRE IN VARCHAR, PLN_VALOR IN NUMBER);
    PROCEDURE MOD_ESTADOCUENTASUSCRIPCION (SUS_CARNET IN NUMBER, SUS_ESTADODECUENTA IN NUMBER);
    FUNCTION CO_SUSCRIPCIONES RETURN SYS_REFCURSOR;
    FUNCTION CO_CLIENTECONSUSCRIPCIONESALDIA RETURN SYS_REFCURSOR;
END PC_SUSCRIPCIONES;
    
    
    
    
    
    
    


    