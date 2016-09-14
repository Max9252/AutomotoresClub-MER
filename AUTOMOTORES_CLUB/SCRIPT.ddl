-- Generado por Oracle SQL Developer Data Modeler 4.1.3.901
--   en:        2016-07-20 16:17:11 COT
--   sitio:      Oracle Database 11g
--   tipo:      Oracle Database 11g




CREATE TABLE "AC.FACTURA"
  (
    Referencia_factura       NUMBER (15) NOT NULL ,
    fecha                    DATE NOT NULL ,
    Tipo_identificacion      VARCHAR2 (2) NOT NULL ,
    Identificacion_comprador NUMBER (10) NOT NULL ,
    Tipo_venta               VARCHAR2 (15) NOT NULL ,
    Valor_facturado          NUMBER (20) NOT NULL ,
    IVA                      NUMBER (15) NOT NULL ,
    Descripcion              VARCHAR2 (100) ,
    USUARIO_Id_Usuario       VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE "AC.FACTURA" ADD CONSTRAINT Factura_PK PRIMARY KEY ( Referencia_factura ) ;


CREATE TABLE AC_AFILIACION
  (
    Referencia         NUMBER (15) NOT NULL ,
    Estado_afiliacion  NUMBER NOT NULL ,
    Tipo_afiliacion    NUMBER (2) NOT NULL ,
    USUARIO_Id_Usuario VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE AC_AFILIACION ADD CONSTRAINT Afiliacion_PK PRIMARY KEY ( Referencia ) ;


CREATE TABLE AC_DIRECCION
  (
    Numero_registro    NUMBER (15) NOT NULL ,
    Direccion          VARCHAR2 (15 CHAR) NOT NULL ,
    AC_P_BARRIO_Codigo NUMBER (2) NOT NULL
  ) ;
ALTER TABLE AC_DIRECCION ADD CONSTRAINT AC_DIRECCION_PK PRIMARY KEY ( Numero_registro ) ;


CREATE TABLE AC_DOMICILIO
  (
    Id_usuario      VARCHAR2 (15) NOT NULL ,
    Numero_registro NUMBER (15) NOT NULL
  ) ;
ALTER TABLE AC_DOMICILIO ADD CONSTRAINT AC_DOMOCILIO_PK PRIMARY KEY ( Numero_registro, Id_usuario ) ;


CREATE TABLE AC_DOMICILIO_USUARIO
  (
    Direccion                    VARCHAR2 (20 CHAR) NOT NULL ,
    Id_usuario                   NUMBER (15) NOT NULL ,
    USUARIO_Numero_Registro      NUMBER (15) NOT NULL ,
    AC_DIRECCION_Numero_registro NUMBER (15) NOT NULL
  ) ;
ALTER TABLE AC_DOMICILIO_USUARIO ADD CONSTRAINT AC_DOMICILIO_USUARIO_PK PRIMARY KEY ( Direccion, Id_usuario ) ;


CREATE TABLE AC_IMAGEN
  (
    Numero_registro NUMBER (15) NOT NULL ,
    Nombre          VARCHAR2 (20) NOT NULL ,
    Descripcion     VARCHAR2 (100) ,
    Imagen BLOB NOT NULL ,
    Ancho       NUMBER (15) NOT NULL ,
    Alto        NUMBER (15) NOT NULL ,
    Tamaño      NUMBER (15) NOT NULL ,
    Id_Usuario  VARCHAR2 (15) NOT NULL ,
    Tipo_imagen NUMBER (2) NOT NULL
  ) ;
ALTER TABLE AC_IMAGEN ADD CONSTRAINT Imagen_PK PRIMARY KEY ( Numero_registro ) ;


CREATE TABLE AC_PAGO
  (
    Id_usuario VARCHAR2 (15) NOT NULL ,
    Codigo     NUMBER (15) NOT NULL
  ) ;
ALTER TABLE AC_PAGO ADD CONSTRAINT AC_PAGO_PK PRIMARY KEY ( Codigo, Id_usuario ) ;


CREATE TABLE AC_PRODUCTOS
  (
    Referencia_propia    NUMBER NOT NULL ,
    Referencia_proveedor NUMBER (20) NOT NULL ,
    Precio               NUMBER (20) NOT NULL ,
    Descripcion          VARCHAR2 (100 CHAR) NOT NULL ,
    Cantidad             NUMBER (20) NOT NULL ,
    Fecha_publicacion    DATE NOT NULL ,
    Fecha_caducidad      DATE NOT NULL ,
    Tipo_producto        NUMBER (15) NOT NULL ,
    Id_nit               VARCHAR2 (20 CHAR) NOT NULL
  ) ;
ALTER TABLE AC_PRODUCTOS ADD CONSTRAINT AC_PRODUCTOS_PK PRIMARY KEY ( Referencia_propia ) ;


CREATE TABLE AC_PROMOCION_PERMANENTE
  (
    Referencia         NUMBER (15) NOT NULL ,
    Caducidad          DATE NOT NULL ,
    Descripcion        VARCHAR2 (100) NOT NULL ,
    USUARIO_Id_Usuario VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE AC_PROMOCION_PERMANENTE ADD CONSTRAINT Promocion_permanente_PK PRIMARY KEY ( Referencia ) ;


CREATE TABLE AC_PROVEEDOR
  (
    Id_nit              VARCHAR2 (20 CHAR) NOT NULL ,
    Nit_proveedor       NUMBER (20) NOT NULL ,
    Nombre_proveedor    VARCHAR2 (50) NOT NULL ,
    Razon_social        VARCHAR2 (50) NOT NULL ,
    Tipo_sede           VARCHAR2 (20) NOT NULL ,
    Tipo_regimen        VARCHAR2 (20) NOT NULL ,
    Direccion           VARCHAR2 (20) NOT NULL ,
    Numero_contacto     NUMBER (20) NOT NULL ,
    Descripcion         VARCHAR2 (100) NOT NULL ,
    Codigo_barrio       NUMBER (2) NOT NULL ,
    Servicio_mensajeria NUMBER (1) NOT NULL ,
    Tipo_cobertura      VARCHAR2 (1 CHAR) NOT NULL
  ) ;
ALTER TABLE AC_PROVEEDOR ADD CONSTRAINT Proveedor_PK PRIMARY KEY ( Id_nit ) ;


CREATE TABLE AC_P_AFILIACION
  (
    Codigo      NUMBER (2) NOT NULL ,
    Nombre      VARCHAR2 (20) NOT NULL ,
    Descripcion VARCHAR2 (50 CHAR) NOT NULL
  ) ;
ALTER TABLE AC_P_AFILIACION ADD CONSTRAINT AC_P_AFILIACION_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_BARRIO
  (
    Codigo         NUMBER (2) NOT NULL ,
    Nombre         VARCHAR2 (50) NOT NULL ,
    Codigo_Comuuna NUMBER (2) NOT NULL
  ) ;
ALTER TABLE AC_P_BARRIO ADD CONSTRAINT AC_P_BARRIO_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_CIUDAD
  (
    Codigo              NUMBER (2) NOT NULL ,
    Nombre              VARCHAR2 (50) NOT NULL ,
    Codigo_Departamento NUMBER (2) NOT NULL
  ) ;
ALTER TABLE AC_P_CIUDAD ADD CONSTRAINT AC_P_CIUDAD_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_COMUNA
  (
    Codigo        NUMBER (2) NOT NULL ,
    Nombre        VARCHAR2 (50) NOT NULL ,
    Codigo_Ciudad NUMBER (2) NOT NULL
  ) ;
ALTER TABLE AC_P_COMUNA ADD CONSTRAINT AC_P_COMUNA_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_DEPARTAMENTOS
  (
    Codigo      NUMBER (2) NOT NULL ,
    Nombre      VARCHAR2 (50) NOT NULL ,
    Codigo_Pais NUMBER (2) NOT NULL
  ) ;
ALTER TABLE AC_P_DEPARTAMENTOS ADD CONSTRAINT AC_P_DEPARTAMENTOS_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_METODO_PAGO
  (
    Codigo      NUMBER (15) NOT NULL ,
    Nombre      VARCHAR2 (20) NOT NULL ,
    Descripcion VARCHAR2 (100) NOT NULL
  ) ;
ALTER TABLE AC_P_METODO_PAGO ADD CONSTRAINT AC_METODO_PAGO_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_PAIS
  (
    Codigo NUMBER (2) NOT NULL ,
    Nombre VARCHAR2 (50) NOT NULL
  ) ;
ALTER TABLE AC_P_PAIS ADD CONSTRAINT AC_P_PAIS_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_SERVICIO
  (
    Codigo      NUMBER (15) NOT NULL ,
    Nombre      VARCHAR2 (20 CHAR) NOT NULL ,
    Descripcion VARCHAR2 (100 CHAR) NOT NULL
  ) ;
ALTER TABLE AC_P_SERVICIO ADD CONSTRAINT AC_p_PROVEEDOR_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_P_SERVICIOS_PROPIOS
  (
    Referencia  NUMBER (15) NOT NULL ,
    Descripcion VARCHAR2 (100 CHAR) NOT NULL ,
    Nombre      VARCHAR2 (50) NOT NULL ,
    Costo       NUMBER NOT NULL
  ) ;
ALTER TABLE AC_P_SERVICIOS_PROPIOS ADD CONSTRAINT AC_SERVICIOS_PROPIOS_PK PRIMARY KEY ( Referencia ) ;


CREATE TABLE AC_P_TIPO_IMAGEN
  (
    Codigo      NUMBER (2) NOT NULL ,
    Nombre      VARCHAR2 (20 CHAR) NOT NULL ,
    Descripcion VARCHAR2 (50 CHAR) NOT NULL
  ) ;
ALTER TABLE AC_P_TIPO_IMAGEN ADD CONSTRAINT AC_P_TIPO_IMAGEN_PK PRIMARY KEY ( Codigo ) ;


CREATE TABLE AC_SERVICIO_PRESTADO
  (
    Id_Usuario VARCHAR2 (15) NOT NULL ,
    Referencia NUMBER (15) NOT NULL
  ) ;
ALTER TABLE AC_SERVICIO_PRESTADO ADD CONSTRAINT AC_SERVICIO_PRESTADO_PK PRIMARY KEY ( Id_Usuario, Referencia ) ;


CREATE TABLE AC_TARJETA_CREDITO
  (
    Numero_tardeja      NUMBER (15) NOT NULL ,
    Cvc                 NUMBER (6) NOT NULL ,
    Vencimiento_tarjeta DATE NOT NULL ,
    Tipo_tarjeta        VARCHAR2 (15) NOT NULL ,
    Identificacion      VARCHAR2 (15) NOT NULL ,
    Nombre_propietario  VARCHAR2 (20) NOT NULL
  ) ;
ALTER TABLE AC_TARJETA_CREDITO ADD CONSTRAINT Tarjeta_credito_PK PRIMARY KEY ( Numero_tardeja ) ;


CREATE TABLE AC_TARJETA_USUARIO
  (
    Numero_tarjeta NUMBER (15) NOT NULL ,
    Id_usuario     VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE AC_TARJETA_USUARIO ADD CONSTRAINT AC_TARJETA_REGISTRADA_PK PRIMARY KEY ( Numero_tarjeta, Id_usuario ) ;


CREATE TABLE AC_TIPO_PROVEEDOR
  (
    AC_PROVEEDOR_Id_NIT   VARCHAR2 (20 CHAR) NOT NULL ,
    AC_P_PROVEEDOR_Codigo NUMBER (15) NOT NULL
  ) ;
ALTER TABLE AC_TIPO_PROVEEDOR ADD CONSTRAINT AC_TIPO_PROVEEDOR_PK PRIMARY KEY ( AC_PROVEEDOR_Id_NIT, AC_P_PROVEEDOR_Codigo ) ;


CREATE TABLE AC_VEHICULO
  (
    Placa_vehiculo VARCHAR2 (6) NOT NULL ,
    Clase_vehiculo VARCHAR2 (20) NOT NULL ,
    Tipo_servicio  VARCHAR2 (15) NOT NULL ,
    Cilindraje     VARCHAR2 (15) NOT NULL ,
    Modelo         NUMBER (4) NOT NULL ,
    Marca          VARCHAR2 (20) NOT NULL ,
    Linea          VARCHAR2 (20) NOT NULL ,
    Id_usuario     VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE AC_VEHICULO ADD CONSTRAINT Asociado_PK PRIMARY KEY ( Placa_vehiculo ) ;


CREATE TABLE USUARIO
  (
    Id_Usuario                 VARCHAR2 (15) NOT NULL ,
    Tipo_usuario               VARCHAR2 (2) NOT NULL ,
    Contraseña                 VARCHAR2 (15) NOT NULL ,
    Telefono                   NUMBER (15) NOT NULL ,
    Email                      VARCHAR2 (50) NOT NULL ,
    Direccion                  VARCHAR2 (50) NOT NULL ,
    Ciudad                     VARCHAR2 (50) ,
    Departamento               VARCHAR2 (50) NOT NULL ,
    Pais                       VARCHAR2 (50) NOT NULL ,
    Puntos_usuario_kilometraje NUMBER (10) NOT NULL ,
    Tipo_afiliacion            VARCHAR2 (15) NOT NULL ,
    Estado_afiliacion          VARCHAR2 (15) NOT NULL
  ) ;
ALTER TABLE USUARIO ADD CONSTRAINT USUARIO_PK PRIMARY KEY ( Id_Usuario ) ;


ALTER TABLE AC_DOMICILIO_USUARIO ADD CONSTRAINT AC_DIRECCION_FK FOREIGN KEY ( AC_DIRECCION_Numero_registro ) REFERENCES AC_DIRECCION ( Numero_registro ) ;

ALTER TABLE AC_DOMICILIO ADD CONSTRAINT AC_DIRECCION_FKv2 FOREIGN KEY ( Numero_registro ) REFERENCES AC_DIRECCION ( Numero_registro ) ;

ALTER TABLE AC_PAGO ADD CONSTRAINT AC_METODO_PAGO_FK FOREIGN KEY ( Codigo ) REFERENCES AC_P_METODO_PAGO ( Codigo ) ;

ALTER TABLE AC_TIPO_PROVEEDOR ADD CONSTRAINT AC_PROVEEDOR_FK FOREIGN KEY ( AC_PROVEEDOR_Id_NIT ) REFERENCES AC_PROVEEDOR ( Id_nit ) ;

ALTER TABLE AC_PRODUCTOS ADD CONSTRAINT AC_PROVEEDOR_FKv2 FOREIGN KEY ( Id_nit ) REFERENCES AC_PROVEEDOR ( Id_nit ) ;

ALTER TABLE AC_AFILIACION ADD CONSTRAINT AC_P_AFILIACION_FK FOREIGN KEY ( Tipo_afiliacion ) REFERENCES AC_P_AFILIACION ( Codigo ) ;

ALTER TABLE AC_DIRECCION ADD CONSTRAINT AC_P_BARRIO_FK FOREIGN KEY ( AC_P_BARRIO_Codigo ) REFERENCES AC_P_BARRIO ( Codigo ) ;

ALTER TABLE AC_PROVEEDOR ADD CONSTRAINT AC_P_BARRIO_FKv2 FOREIGN KEY ( Codigo_barrio ) REFERENCES AC_P_BARRIO ( Codigo ) ;

ALTER TABLE AC_P_COMUNA ADD CONSTRAINT AC_P_CIUDAD_FK FOREIGN KEY ( Codigo_Ciudad ) REFERENCES AC_P_CIUDAD ( Codigo ) ;

ALTER TABLE AC_P_BARRIO ADD CONSTRAINT AC_P_COMUNA_FK FOREIGN KEY ( Codigo_Comuuna ) REFERENCES AC_P_COMUNA ( Codigo ) ;

ALTER TABLE AC_P_CIUDAD ADD CONSTRAINT AC_P_DEPARTAMENTOS_FK FOREIGN KEY ( Codigo_Departamento ) REFERENCES AC_P_DEPARTAMENTOS ( Codigo ) ;

ALTER TABLE AC_P_DEPARTAMENTOS ADD CONSTRAINT AC_P_PAIS_FK FOREIGN KEY ( Codigo_Pais ) REFERENCES AC_P_PAIS ( Codigo ) ;

ALTER TABLE AC_TIPO_PROVEEDOR ADD CONSTRAINT AC_P_PROVEEDOR_FK FOREIGN KEY ( AC_P_PROVEEDOR_Codigo ) REFERENCES AC_P_SERVICIO ( Codigo ) ;

ALTER TABLE AC_PRODUCTOS ADD CONSTRAINT AC_P_SERVICIO_FK FOREIGN KEY ( Tipo_producto ) REFERENCES AC_P_SERVICIO ( Codigo ) ;

ALTER TABLE AC_IMAGEN ADD CONSTRAINT AC_P_TIPO_IMAGEN_FK FOREIGN KEY ( Tipo_imagen ) REFERENCES AC_P_TIPO_IMAGEN ( Codigo ) ;

ALTER TABLE AC_SERVICIO_PRESTADO ADD CONSTRAINT AC_SERVICIOS_PROPIOS_FK FOREIGN KEY ( Referencia ) REFERENCES AC_P_SERVICIOS_PROPIOS ( Referencia ) ;

ALTER TABLE AC_TARJETA_USUARIO ADD CONSTRAINT AC_TARJETA_CREDITO_FK FOREIGN KEY ( Numero_tarjeta ) REFERENCES AC_TARJETA_CREDITO ( Numero_tardeja ) ;

ALTER TABLE AC_VEHICULO ADD CONSTRAINT AC_USUARIO_FK FOREIGN KEY ( Id_usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_SERVICIO_PRESTADO ADD CONSTRAINT AC_USUARIO_FKv2 FOREIGN KEY ( Id_Usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_PAGO ADD CONSTRAINT AC_USUARIO_FKv3 FOREIGN KEY ( Id_usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_TARJETA_USUARIO ADD CONSTRAINT AC_USUARIO_FKv4 FOREIGN KEY ( Id_usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_DOMICILIO ADD CONSTRAINT AC_USUARIO_FKv5 FOREIGN KEY ( Id_usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_PROMOCION_PERMANENTE ADD CONSTRAINT USUARIO_FK FOREIGN KEY ( USUARIO_Id_Usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE "AC.FACTURA" ADD CONSTRAINT USUARIO_FKv2 FOREIGN KEY ( USUARIO_Id_Usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_AFILIACION ADD CONSTRAINT USUARIO_FKv4 FOREIGN KEY ( USUARIO_Id_Usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_IMAGEN ADD CONSTRAINT USUARIO_FKv5 FOREIGN KEY ( Id_Usuario ) REFERENCES USUARIO ( Id_Usuario ) ;

ALTER TABLE AC_DOMICILIO_USUARIO ADD CONSTRAINT USUARIO_FKv6 FOREIGN KEY ( USUARIO_Numero_Registro ) REFERENCES USUARIO ( Id_Usuario ) ;


-- Informe de Resumen de Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            26
-- CREATE INDEX                             0
-- ALTER TABLE                             53
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
