/*Fecha: 24/05/2025
Autor: Erika S�nchez 
Descripci�n: Creacion de secuencia
ROLLBACK
*/

-- Eliminar la secuencia
BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE seq_tasks';
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('No se pudo eliminar la secuencia seq_tasks: ' || SQLERRM);
END;
/