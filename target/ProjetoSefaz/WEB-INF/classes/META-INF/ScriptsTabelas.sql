-- Scripts para cria��o do projeto -- banco: HSQLDB

CREATE TABLE usuario (
   email VARCHAR(100) NOT NULL,
   nome VARCHAR(100) NOT NULL,
   senha VARCHAR(100) NOT NULL,
   PRIMARY KEY (email) 
);

CREATE TABLE telefone (
   id INTEGER IDENTITY PRIMARY KEY,
   ddd INT NOT NULL,
   numero VARCHAR(100) NOT NULL,
   tipo VARCHAR(100) NOT NULL,
   email_usuario VARCHAR(100) NOT NULL,
   PRIMARY KEY (ID)
);

ALTER TABLE TELEFONE
ADD FOREIGN KEY (EMAIL_USUARIO) 
REFERENCES USUARIO(EMAIL);

