
INSERT INTO escuela (id,ubicacion,nombre) VALUES (1,'MONTERREY','Escuela1');
INSERT INTO escuela (id,ubicacion,nombre) VALUES (2,'CDMX','Escuela2');
INSERT INTO escuela (id,ubicacion,nombre) VALUES (3,'CHIHUAHUA','Escuela3');
INSERT INTO escuela (id,ubicacion,nombre) VALUES (4,'CDMX','Escuela4');
INSERT INTO escuela (id,ubicacion,nombre) VALUES (5,'MONTERREY','Escuela5');


INSERT INTO alumnos (id,nombre,fecha_ingreso,id_escuela) VALUES (1,'Douglas','12-05-2021', 1);
INSERT INTO alumnos (id,nombre,fecha_ingreso,id_escuela) VALUES (2,'Eduardo','10-03-2021', 3);


INSERT INTO profesores (id,nombre,fecha_ingreso,id_escuela) VALUES (1,'Ramón','12-05-2021', 1);
INSERT INTO profesores (id,nombre,fecha_ingreso,id_escuela) VALUES (2,'Alfredo','12-05-2021', 2);
INSERT INTO profesores (id,nombre,fecha_ingreso,id_escuela) VALUES (3,'David','12-05-2021', 3);
INSERT INTO profesores (id,nombre,fecha_ingreso,id_escuela) VALUES (4,'Martha','12-05-2021', 1);


INSERT INTO cursos (id,nombre_curso,aula) VALUES (1,'Español','aula1');
INSERT INTO cursos (id,nombre_curso,aula) VALUES (2,'Programación','aula2');
INSERT INTO cursos (id,nombre_curso,aula) VALUES (3,'Matemáticas','aula3');
INSERT INTO cursos (id,nombre_curso,aula) VALUES (4,'Física','aula4');


INSERT INTO cursos_escuela (id,id_curso,id_escuela) VALUES (1,1,2);
INSERT INTO cursos_escuela (id,id_curso,id_escuela) VALUES (2,3,2);
INSERT INTO cursos_escuela (id,id_curso,id_escuela) VALUES (3,4,1);
INSERT INTO cursos_escuela (id,id_curso,id_escuela) VALUES (4,2,3);


INSERT INTO alumnos_cursos (id,id_curso,id_alumno) VALUES (1,1,2);
INSERT INTO alumnos_cursos (id,id_curso,id_alumno) VALUES (2,3,2);
INSERT INTO alumnos_cursos (id,id_curso,id_alumno) VALUES (3,4,1);
INSERT INTO alumnos_cursos (id,id_curso,id_alumno) VALUES (4,2,3);

