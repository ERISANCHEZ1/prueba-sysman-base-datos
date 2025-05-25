/*Fecha: 24/05/2025
Autor: Erika Sánchez 
Descripción: trigger para autogenerar el ID
*/


CREATE OR REPLACE TRIGGER trg_autogenerator_of_task_ids
BEFORE INSERT ON tasks
FOR EACH ROW
BEGIN
  IF :new.task_id IS NULL THEN
    :new.task_id := seq_tasks.NEXTVAL;
  END IF;
  :new.created_at := SYSDATE;
END;
/