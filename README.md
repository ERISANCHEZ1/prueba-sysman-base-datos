# Task Manager - Base de Datos

Este módulo describe la estructura de base de datos desarrollada para la aplicación de gestión de tareas (*Task Manager*), que permite crear, editar, actualizar y eliminar tareas. La base de datos está implementada en **Oracle** y se integra con el backend Java mediante JDBC y Servlets.

##  Estructura de la Base de Datos

Se creó una tabla principal llamada `TASKS`, con el siguiente diseño:

### Tabla: `TASKS`

| Columna      | Tipo              | Descripción                                   |
|--------------|-------------------|-----------------------------------------------|
| TASK_ID      | NUMBER(10)        | Clave primaria autoincremental (mediante secuencia) |
| TITLE        | VARCHAR2(255)     | Título de la tarea (obligatorio)              |
| DESCRIPTION  | VARCHAR2(500)     | Descripción opcional                          |
| COMPLETED    | NUMBER(1)         | Estado de la tarea: 0 = Pendiente, 1 = Completada |
| CREATED_AT   | DATE              | Fecha de creación                             |
| UPDATED_AT   | DATE              | Fecha de última actualización      


Incluye scripts de:
- Secuencia
- Triggers
- Tabla

### Paquete: `task_pkg`

  PROCEDURE create_task(p_title IN VARCHAR2, p_description IN VARCHAR2, p_task_id OUT NUMBER);
  PROCEDURE update_task(p_task_id IN NUMBER, p_title IN VARCHAR2, p_description IN VARCHAR2, p_completed IN NUMBER);
  PROCEDURE delete_task(p_task_id IN NUMBER);
  FUNCTION get_all_tasks RETURN SYS_REFCURSOR;
  FUNCTION get_task_by_id(p_task_id IN NUMBER) RETURN SYS_REFCURSOR;
