create or replace PACKAGE BODY task_pkg AS

  -- Author  : ESANCHEZ
  -- Created : 24/05/2025
  -- Purpose : Reunir funciones y procedimientos para gestionar tareas en la tabla TASKS
  
  --- prc que se encarga de crear una nueva tarea
  PROCEDURE create_task(p_title IN VARCHAR2, p_description IN VARCHAR2, p_task_id OUT NUMBER) IS
  BEGIN
    INSERT INTO tasks (task_id, title, description)
    VALUES (seq_tasks.NEXTVAL, p_title, p_description)
    RETURNING task_id INTO p_task_id;
  END;
  
  --Actualizar los datos de una tarea
  PROCEDURE update_task(p_task_id IN NUMBER, p_title IN VARCHAR2, p_description IN VARCHAR2, p_completed IN NUMBER) IS
  BEGIN
    UPDATE tasks
    SET title = p_title,
        description = p_description,
        completed = p_completed
    WHERE task_id = p_task_id;
  END;


--Eliminar una tarea de la tabla
  PROCEDURE delete_task(p_task_id IN NUMBER) IS
  BEGIN
    DELETE FROM tasks WHERE task_id = p_task_id;
  END;


-- Funcion encargada de  mostrar la lista completa de tareas
  FUNCTION get_all_tasks RETURN SYS_REFCURSOR IS
    rc SYS_REFCURSOR;
  BEGIN
    OPEN rc FOR SELECT * FROM tasks ORDER BY created_at DESC;
    RETURN rc;
  END;

-- Funcion que se encarga de consultar una tarea específica
  FUNCTION get_task_by_id(p_task_id IN NUMBER) RETURN SYS_REFCURSOR IS
    rc SYS_REFCURSOR;
  BEGIN
    OPEN rc FOR SELECT * FROM tasks WHERE task_id = p_task_id;
    RETURN rc;
  END;

END task_pkg;
