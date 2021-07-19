
CREATE TABLE escuela (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  ubicacion VARCHAR(30) NOT NULL,
  nombre VARCHAR(32) NOT NULL,
);

CREATE TABLE alumnos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  fecha_ingreso DATE NOT NULL,
  id_escuela INT DEFAULT NULL,
  CONSTRAINT FOREIGN KEY (id_escuela) REFERENCES escuela (id) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE profesores (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  fecha_ingreso DATE NOT NULL,
  id_escuela INT DEFAULT NULL,
  CONSTRAINT FOREIGN KEY (id_escuela) REFERENCES escuela (id) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE cursos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre_curso VARCHAR(30) NOT NULL,
  aula VARCHAR(10) NOT NULL,
  edad INT(2) NOT NULL,
  id_profesor INT DEFAULT NULL,
  CONSTRAINT FOREIGN KEY (id_profesor) REFERENCES profesores (id) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE cursos_escuela (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_curso INT NOT NULL,
  id_escuela INT DEFAULT NULL,
  CONSTRAINT FOREIGN KEY (id_curso) REFERENCES cursos (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FOREIGN KEY (id_escuela) REFERENCES escuela (id) ON DELETE NO ACTION ON UPDATE CASCADE
);

CREATE TABLE alumnos_cursos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  id_curso INT NOT NULL,
  id_alumno INT DEFAULT NULL,
  CONSTRAINT FOREIGN KEY (id_curso) REFERENCES cursos (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT FOREIGN KEY (id_alumno) REFERENCES alumnos (id) ON DELETE NO ACTION ON UPDATE CASCADE
);