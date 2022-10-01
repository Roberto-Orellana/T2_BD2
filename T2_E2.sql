/*  
    @Autor: Jorge Orellana (jorellanar@unah.hn)
    @Versión: 0.1.0
    @Fecha: 27/09/2022
*/
SET SERVEROUTPUT ON
DECLARE
  num_1 number := &num;
BEGIN
  
    IF
        MOD(num_1,2) = 0
    THEN
        dbms_output.put_line(num_1 || ' Es par');
    ELSE
        dbms_output.put_line(num_1 || ' Es impar');
    END IF;
END;



