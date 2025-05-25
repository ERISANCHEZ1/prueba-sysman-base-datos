/*Fecha: 24/05/2025
Autor: Erika Sánchez 
Descripción:  actualizar campo updated_at automáticamente
*/
CREATE OR REPLACE TRIGGER trg_date_update_tasks
BEFORE UPDATE ON tasks
FOR EACH ROW
BEGIN
  :NEW.updated_at := SYSDATE;
END;
/
