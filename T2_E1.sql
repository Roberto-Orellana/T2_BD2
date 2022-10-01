/*
    Eercicio_1
    @Autor; Jorge Orellana (jorellanar@unah.hn)
    @Versión: 0.1.0
    @Fecha: 27/09/2022
*/


CREATE TABLE Usuario(
    Id NUMBER PRIMARY KEY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL,
    Apellido1 VARCHAR2(30) NOT NULL,
    Apellido2 VARCHAR2(30) NOT NULL
    );

INSERT INTO Usuario VALUES(1,'pedro','picapiedra','dePicapiedra');
INSERT INTO Usuario VALUES(2,'pablo','marmol','deMarmol');
INSERT INTO Usuario VALUES(3,'vilma','picapiedra','dePicapiedra');
INSERT INTO Usuario VALUES(4,'betty','marmol','deMarmol');

SELECT UPPER(SUBSTR(Usuario.nombre,1,1)),UPPER(SUBSTR(Usuario.Apellido1,1,1)),UPPER(SUBSTR(Usuario.Apellido2,1,1))
FROM Usuario;


SET SERVEROUTPUT ON
DECLARE

    nombre VARCHAR2(30);
    apellido1 VARCHAR2(30);
    apellido2 VARCHAR2(30);
BEGIN
  
    SELECT UPPER(SUBSTR(Usuario.nombre,1,1)),UPPER(SUBSTR(Usuario.Apellido1,1,1)),UPPER(SUBSTR(Usuario.Apellido2,1,1)) INTO nombre,apellido1,apellido2
    FROM Usuario
    WHERE Usuario.Id = 4;
    DBMS_OUTPUT.PUT_LINE(NOMBRE||'.'||apellido1||'.'||apellido2||'.');
   
END;










