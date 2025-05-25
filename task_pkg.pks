create or replace PACKAGE task_pkg AS
  PROCEDURE create_task(p_title IN VARCHAR2, p_description IN VARCHAR2, p_task_id OUT NUMBER);
  PROCEDURE update_task(p_task_id IN NUMBER, p_title IN VARCHAR2, p_description IN VARCHAR2, p_completed IN NUMBER);
  PROCEDURE delete_task(p_task_id IN NUMBER);
  FUNCTION get_all_tasks RETURN SYS_REFCURSOR;
  FUNCTION get_task_by_id(p_task_id IN NUMBER) RETURN SYS_REFCURSOR;
END task_pkg;
