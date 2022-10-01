/*
    Eercicio_5
    @Autor; Jorge Orellana (jorellanar@unah.hn)
    @Versión: 0.1.0
    @Fecha: 27/09/2022
*/




CREATE TABLE Empleado(
    Id NUMBER PRIMARY KEY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL,
    Apellido VARCHAR2(30) NOT NULL,
    Salario DECIMAL(8,2) NOT NULL
);

INSERT INTO Empleado(Id,Nombre,Apellido,Salario) VALUES(2,'Pedro','Picapiedra',17800.50);
INSERT INTO Empleado(Id,Nombre,Apellido,Salario) VALUES(3,'Pablo','Marmol',15700.45);
INSERT INTO Empleado(Id,Nombre,Apellido,Salario) VALUES(4,'Vilma','Picapiedra',12400.75);
INSERT INTO Empleado(Id,Nombre,Apellido,Salario) VALUES(5,'Betty','Marmol',13200.80);

SET SERVEROUTPUT ON
DECLARE
    Salario_max DECIMAL(8,2);
    Salario_min DECIMAL(8,2);
    Diferencia DECIMAL(8,2);
BEGIN
    SELECT MAX(Salario) INTO Salario_max
    FROM Empleado;
    
    SELECT MIN(Salario) INTO Salario_min
    FROM Empleado;
    
    Diferencia := Salario_max - Salario_min;
    
    DBMS_OUTPUT.PUT_LINE('La diferencia entre los salarios es: '|| Diferencia);
    
END;





