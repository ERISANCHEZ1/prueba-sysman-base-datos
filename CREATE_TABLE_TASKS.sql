/*Fecha: 24/05/2025
Autor: Erika Sánchez 
Descripción: Creación de tabla TASKS
*/


CREATE TABLE tasks (
  task_id      NUMBER PRIMARY KEY,
  title        VARCHAR2(100) NOT NULL,
  description  VARCHAR2(4000),
  completed    NUMBER(1,0) DEFAULT 0,
  created_at   TIMESTAMP DEFAULT SYSDATE,
  updated_at   TIMESTAMP
);




SELECT * FROM tasks;