/*Fecha: 24/05/2025
Autor: Erika S�nchez 
Descripci�n: Creaci�n de tabla TASKS
ROLLBACK

*/


BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE tasks CASCADE CONSTRAINTS PURGE';
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('No se pudo eliminar la tabla TASKS: ' || SQLERRM);
END;
/