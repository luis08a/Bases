/*Creación de tablas*/
create table departamentos (ID number(4), 
                            nombre varchar(20) not null,
                            descripcion varchar(200) not null);

create table empleados (ID number(5),
                        nombres varchar(30) not null,
                        apellidos varchar(30) not null, 
                        telefono varchar(15),
                        cargo varchar(50) not null,
                        departamento number(4) not null);

create table empleadosTrabajanEnSalas ( empleado number(5),
                                        sala number(4));

create table salas ( ID number(4),
                     areaDisponible number(3) not null,
                     altura number(2) not null);

create table colecciones (  ID number(4), 
                            nombre varchar(35) not null,
                            descripcion varchar(180) not null,
                            sala number(4),
                            evento number(5));

create table objetosDeExposicion (  ID number(5),
                                    fechaDeOrigen date not null,
                                    nombre varchar(30) not null,
                                    area number(3) not null,
                                    altura number(2) not null,
                                    coleccion number(4),
                                    propietario varchar(50) not null);

create table obrasDeArte (  ID number(5),
                            estilo varchar(15) not null,
                            tematica varchar(30),
                            descripcion varchar(200),
                            nombreAutor varchar(40) not null,
                            paisAutor varchar(40) not null);

create table objetosHistoricos (ID number(5),
                                periodoHistorico varchar(180),
                                historia varchar(300) not null);

create table propietarios ( correo varchar(50),
                            nombre varchar(40) not null,
                            telefonoDeContacto varchar(15) not null,
                            fechaDeAsociacion date not null);

create table autores (  nombre varchar(40),
                        paisDeOrigen varchar(40),
                        fechaDeNacimiento date not null,
                        fechaDeMuerte date);

create table eventos (  ID number(5),
                        nombre varchar(30) not null,
                        fechaInicio date not null,
                        fechaFin date not null,
                        detalles XMLType);

create table patrocina (tipoDeDocumentoPatrocinador varchar(2),
                        numeroDeDocumentoPatrocinador varchar(20),
                        evento number(5),
                        monto number(9) not null);

create table patrocinadores (   tipoDeDocumento varchar(3),
                                numeroDeDocumento varchar(30),
                                nombre varchar(30) not null,
                                fechaDeVinculacion date not null);

create table boletas (  ID number(5),
                        fecha date not null, 
                        precio number(9) not null, 
                        evento number(5) not null);

create table permiteAsistirA (  carnet varchar(20),
                                evento number(5),
                                fechaDeAsistencia date not null);

create table suscripciones (carnet varchar(20),
                            clienteNumeroDocumento varchar(20) not null,
                            clienteTipoDeDocumento varchar(2) not null,
                            plan varchar(20) not null,
                            estadoDeCuenta number(1) not null);

create table pagos (numeroDeSerie number(9),
                    carnetSuscripcion varchar(20) not null,
                    fechaDePago date not null,
                    valor number(9) not null);

create table clientes ( tipoDeDocumento varchar(2),
                        numeroDeDocumento varchar(20),
                        correo varchar(50) not null,
                        fechaDeVinculacion date not null);

create table planes (   nombre varchar(20),
                        descripcion varchar(200) not null,
                        valor number(9) not null );