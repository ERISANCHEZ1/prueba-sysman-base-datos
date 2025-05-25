/*Fecha: 24/05/2025
Autor: Erika S�nchez 
Descripci�n:  actualizar campo updated_at autom�ticamente
*/
CREATE OR REPLACE TRIGGER trg_date_update_tasks
BEFORE UPDATE ON tasks
FOR EACH ROW
BEGIN
  :NEW.updated_at := SYSDATE;
END;
/
