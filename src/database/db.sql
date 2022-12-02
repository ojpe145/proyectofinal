CREATE DATABASE db_links;

USE db_links;

-- TABLE USER
-- all pasword wil be encrypted using SHA1
CREATE TABLE users (
  id INT(11) NOT NULL,
  username VARCHAR(16) NOT NULL,
  password VARCHAR(60) NOT NULL,
  fullname VARCHAR(100) NOT NULL
);

ALTER TABLE users
  ADD PRIMARY KEY (id);

ALTER TABLE users
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE users;

INSERT INTO users (id, username, password, fullname) 
  VALUES (1, 'john', 'password1', 'John Carter');

SELECT * FROM users;

-- LINKS TABLE
CREATE TABLE links (
  id INT(11) NOT NULL,
  title VARCHAR(150) NOT NULL,
  url VARCHAR(255) NOT NULL,
  description TEXT,
  user_id INT(11),
  id_valor_parametro INT(11) ,
  created_at timestamp NOT NULL DEFAULT current_timestamp,
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id),
  CONSTRAINT fk_valor_parametro FOREIGN KEY(id_valor_parametro) REFERENCES valor_parametro(id_valor_parametro)
);

ALTER TABLE links
  ADD PRIMARY KEY (id);

ALTER TABLE links
  MODIFY id INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE links;

CREATE TABLE parametro (
  id_parametro INT(11) ,
  nombre_parametro VARCHAR(16) ,
  estado VARCHAR(100) 

);

ALTER TABLE parametro
  ADD PRIMARY KEY (id_parametro);

ALTER TABLE parametro
  MODIFY id_parametro INT(11)  AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE parametro;

CREATE TABLE valor_parametro (
  id_valor_parametro INT(11) ,
  nombre_vparametro VARCHAR(16) ,
   orden VARCHAR(16) ,
  estado VARCHAR(100) ,
  id_parametro INT(11) ,
  CONSTRAINT fk_parametro FOREIGN KEY(id_parametro) REFERENCES parametro(id_parametro)

);

ALTER TABLE valor_parametro
  ADD PRIMARY KEY (id_valor_parametro);

ALTER TABLE valor_parametro
  MODIFY id_valor_parametro INT(11)  AUTO_INCREMENT, AUTO_INCREMENT = 2;

DESCRIBE parametro;