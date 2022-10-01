/*
    Eercicio_4
    @Autor; Jorge Orellana (jorellanar@unah.hn)
    @Versión: 0.1.0
    @Fecha: 27/09/2022
*/

CREATE TABLE Departamento(
    Id NUMBER PRIMARY KEY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL
    );

CREATE TABLE Empleado(
    Id NUMBER PRIMARY KEY NOT NULL,
    Nombre VARCHAR2(30) NOT NULL,
    Apellido VARCHAR2(30) NOT NULL,
    Salario DECIMAL(8,2) NOT NULL,
    FK_departamento NUMBER NOT NULL,
    
    FOREIGN KEY (FK_departamento) REFERENCES Departamento(Id)
);

INSERT INTO Departamento(Id,Nombre) VALUES(100,'Desarrollo App');
INSERT INTO Departamento(Id,Nombre) VALUES(101,'Marketing');
INSERT INTO Departamento(Id,Nombre) VALUES(102,'Redes');

INSERT INTO Empleado VALUES(2,'Pedro','Picapiedra',17800.50,100);
INSERT INTO Empleado VALUES(3,'Pablo','Marmol',15700.45,100);
INSERT INTO Empleado VALUES(4,'Vilma','Picapiedra',12400.75,100);
INSERT INTO Empleado VALUES(5,'Betty','Marmol',13200.80,100);
INSERT INTO Empleado VALUES(6,'Pedro','Picapiedra',17800.50,100);
INSERT INTO Empleado VALUES(7,'Pablo','Marmol',15700.45,100);
INSERT INTO Empleado VALUES(8,'Vilma','Picapiedra',12400.75,101);
INSERT INTO Empleado VALUES(9,'Betty','Marmol',13200.80,102);


SET SERVEROUTPUT ON
DECLARE
    DEPARTAMENTO_ID NUMBER := 100;
    Nombre_dep VARCHAR2(30);
    Empleados_num NUMBER;
BEGIN
    SELECT Departamento.Nombre INTO Nombre_dep
    FROM Departamento
    WHERE Departamento.Id = DEPARTAMENTO_ID;
    
    SELECT COUNT(Empleado.FK_depart) INTO Empleados_num
    FROM Departamento
    JOIN Empleado
    ON Departamento.Id = Empleado.FK_depart
    WHERE Empleado.FK_depart = DEPARTAMENTO_ID;

    DBMS_OUTPUT.PUT_LINE('El nombre del departamento es: '|| Nombre_dep || ', y el numero de empleados es: '|| Empleados_num);
END;









