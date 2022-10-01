/*
    Eercicio_5
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

INSERT INTO Empleado(Id,Nombre,Apellido,Salario,FK_departamento) VALUES(2,'Pedro','Picapiedra',17800.50,100);
INSERT INTO Empleado(Id,Nombre,Apellido,Salario,FK_departamento) VALUES(3,'Pablo','Marmol',15700.45,100);
INSERT INTO Empleado(Id,Nombre,Apellido,Salario,FK_departamento) VALUES(4,'Vilma','Picapiedra',12400.75,100);
INSERT INTO Empleado(Id,Nombre,Apellido,Salario,FK_departamento) VALUES(5,'Betty','Marmol',13200.80,100);



SET SERVEROUTPUT ON
DECLARE
    Salario_maximo DECIMAL(8,2);
BEGIN
  SELECT MAX(Empleado.Salario) INTO Salario_maximo
    FROM Departamento
    JOIN Empleado
    ON Departamento.Id = Empleado.FK_departamento;
    
    DBMS_OUTPUT.PUT_LINE('El salario maximo es: '|| Salario_maximo);
    
END;





