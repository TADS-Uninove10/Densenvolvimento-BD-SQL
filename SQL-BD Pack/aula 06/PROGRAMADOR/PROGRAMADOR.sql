---  CRIAR TABELA DE ESCOLARIDADE -------
CREATE TABLE ESCOLARIDADE(
  CODESCO NUMBER(4),
  NOMEESCO VARCHAR2(30),
  CONSTRAINTS ESCOLA_PK PRIMARY KEY (CODESCO));

---  CRIAR TABELA DE PROGRAMADOR -------

CREATE TABLE PROGRAMADOR(
  CODPROG NUMBER(4),
  NOMEPROG VARCHAR2(30),
  ENDERPROG VARCHAR2(30),
  FONEPROG VARCHAR2(20),
  CODESCO NUMBER(4),
  CONSTRAINTS PROG_PK PRIMARY KEY(CODPROG),
  CONSTRAINTS PROG_FK FOREIGN KEY(CODESCO) REFERENCES
    ESCOLARIDADE (CODESCO));

-----  CRIAR TABELA DE LINGUAGEM  ------
CREATE TABLE LINGUAGEM(
  CODLING NUMBER(4),
  NOMELING VARCHAR2(30),
  CONSTRAINTS LING_PK PRIMARY KEY(CODLING));

---- CRIAR A TABELA CONHECIMENTO --------
CREATE TABLE CONHECIMENTO(
  CODPROG NUMBER(4),
  CODLING NUMBER(4),
  TEMPOEXP NUMBER(4,1),
  CONSTRAINTS CONHEC_FK_P FOREIGN KEY (CODPROG) REFERENCES
              PROGRAMADOR (CODPROG),
  CONSTRAINTS CONHEC_FK_L FOREIGN KEY (CODLING) REFERENCES
              LINGUAGEM (CODLING));
--- INSERIR DADOS  -----------
INSERT INTO ESCOLARIDADE VALUES (1,'FUNDAMENTAL');
INSERT INTO ESCOLARIDADE VALUES (2,'MEDIO');
INSERT INTO ESCOLARIDADE VALUES (3,'SUPERIOR INCOMPLETO');
INSERT INTO ESCOLARIDADE VALUES (4,'TECNICO DE INFORMATICA');
INSERT INTO ESCOLARIDADE VALUES (5,'SUPERIOR ');

INSERT INTO PROGRAMADOR VALUES (1,'ARTHUR','R. QUATA,34','1111-2222',4);
INSERT INTO PROGRAMADOR VALUES (2,'RAQUEL','R. 13,2','3333-3333',3);
INSERT INTO PROGRAMADOR VALUES (3,'ANA MARIA','R. EDC,34','4444-5555',4);
INSERT INTO PROGRAMADOR VALUES (4,'JOAQUIM','R. GRT,314','4456-5555',3);
INSERT INTO PROGRAMADOR VALUES (5,'JOAO','R. AVA,344','1444-5555',2);
INSERT INTO PROGRAMADOR VALUES (6,'PAULO','R. BECA,334','2444-5555',1);
INSERT INTO PROGRAMADOR VALUES (7,'PEDRO','R. BOCA,534','2224-5555',1);
INSERT INTO PROGRAMADOR VALUES (8,'MARCIA','R. CABO,734','4444-5225',5);
INSERT INTO PROGRAMADOR VALUES (9,'ROBERTA','R. LIXO,374','4434-5555',5);
INSERT INTO PROGRAMADOR VALUES (10,'NOEMIA','R. RICA,304','1444-2555',4);

SELECT * FROM PROGRAMADOR;

INSERT INTO LINGUAGEM VALUES (1,'ALGOL');
INSERT INTO LINGUAGEM VALUES (2,'COBOL');
INSERT INTO LINGUAGEM VALUES (3,'JAVA');
INSERT INTO LINGUAGEM VALUES (4,'VISUAL BASIC');

SELECT * FROM LINGUAGEM;

INSERT INTO CONHECIMENTO VALUES(1,1,2);
INSERT INTO CONHECIMENTO VALUES(1,3,5);
INSERT INTO CONHECIMENTO VALUES(1,4,10);
INSERT INTO CONHECIMENTO VALUES(2,1,1);
INSERT INTO CONHECIMENTO VALUES(2,2,1);
INSERT INTO CONHECIMENTO VALUES(2,3,10);
INSERT INTO CONHECIMENTO VALUES(3,2,4);
INSERT INTO CONHECIMENTO VALUES(3,3,2);
INSERT INTO CONHECIMENTO VALUES(3,4,4);
INSERT INTO CONHECIMENTO VALUES(3,2,9);

SELECT * FROM CONHECIMENTO;


---- LISTA A TABELA DE PROGRAMADOR EM ORDEM ALFABÉTICA POR NOME
SELECT NOMEPROG,FONEPROG FROM PROGRAMADOR ORDER BY NOMEPROG;

---- LISTA A TABELA DE LINGUAGEM EM ORDEM DESCENDENTE
SELECT NOMELING FROM LINGUAGEM ORDER BY NOMELING DESC;


--- LISTA UM PRODUTO CARTESIANO ENTRE TABELAS

SELECT * FROM PROGRAMADOR,LINGUAGEM;
SELECT * FROM PROGRAMADOR,ESCOLARIDADE,LINGUAGEM;

--- LISTA O NOME DO PROGRAMADOR E SUAS LIGUAGENS DE CONHECIMENTO---
SELECT NOMEPROG, NOMELING FROM PROGRAMADOR, LINGUAGEM, CONHECIMENTO
    WHERE PROGRAMADOR.CODPROG = CONHECIMENTO.CODPROG AND
          LINGUAGEM.CODLING = CONHECIMENTO.CODLING;
