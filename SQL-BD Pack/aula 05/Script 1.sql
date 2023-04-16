CREATE TABLE PROJETOS(
COD_PROJ VARCHAR2(4)CONSTRAINTS PROJ_PK PRIMARY KEY,
DESCRICAO VARCHAR2(50));

---SELECT *FROM PROJETOS;-----
-----INSERIR DADOS-----

INSERT INTO PROJETOS VALUES
(p001,'SOBRADO COM 2 DORMITORIOS 300 m2');
INSERT INTO PROJETOS VALUES
(p002,'REFORMA DO MASP');
INSERT INTO PROJETOS VALUES
(p003,'CONSTRUCAO DO SHOPPING STO AMARO');
INSERT INTO PROJETOS VALUES
(p004,'REFORMA DO IBIRAPUERA');

SELECT *FROM PROJETOS;
CREATE TABLE ESPECIALIDADES(
COD_ESP NUMBER(7)CONSTRAINTS ESP_PK PRIMARY KEY,
DESCRICAO_ESP VARCHAR2(50));

INSERT INTO ESPECIALIDADES VALUES
(1,'ARQUITETO');
INSERT INTO ESPECIALIDADES VALUES
(2,'ENGENHEIRO CIVIL');
INSERT INTO ESPECIALIDADES VALUES
(3,'PEDREIRO');
INSERT INTO ESPECIALIDADES VALUES
(4,'PINTOR');
SELECT *FROM ESPECIALIDADES;
-----INSERIR DADOS-----

CREATE TABLE FUNCIONARIO(
COD_FUNC NUMBER(7)CONSTRAINTS FUNC_PK PRIMARY KEY,
NOME_FUNC VARCHAR2(50),
ENDER_FUNC VARCHAR2(50),
CEP VARCHAR2(9),
FONE VARCHAR2(13),
COD_ESP NUMBER(7));

INSERT INTO FUNCIONARIO VALUES
(101,1,'MARLI PEREIRA','R.DAS RODAS 230',12345-000,3321-1235);
INSERT INTO FUNCIONARIO VALUES
(102,4,'JOSE MEDEIROS','AV BRASIL 2340',12354-001,5214-5412);
INSERT INTO FUNCIONARIO VALUES
(103,3,'LUIS PAULO DIAS','R.GUILHERME DIAS 23',65236-000,4545-1212,);



SELECT *FROM FUNCIONARIO;
-----INSERIR DADOS-----

CREATE TABLE PROJFUNC(
COD_PROJ VARCHAR2(7),
COD_FUNC NUMBER(7),
DT_INICIO DATE,
DT_TERMINO DATE,
HORAS NUMBER(4),
VALOR_PG NUMBER(7,2),
CONSTRAINTS PROJFUNC_PK PRIMARY KEY(COD_PROJ,COD_FUNC),
CONSTRAINTS PROJFUNCIONARIO_FK FOREIGN KEY(COD_PROJ)REFERENCES PROJETOS(COD_PROJ),
CONSTRAINTS PROJETOFUNC_FK FOREIGN KEY(COD_FUNC)REFERENCES FUNCIONARIO(COD_FUNC));



SELECT * FROM PROJFUNC;
-------INSERIR DADOS----  

INSERT INTO PROJFUNC VALUES

(p001,105,01/08/2009,01/12/2009,800,120.000.00);
INSERT INTO PROJFUNC VALUES

(p001,103,10/09/2009,10/09/2009,2000,16.000.00);
INSERT INTO PROJFUNC VALUES

(p002,101,01/08/2009,01/10/2009,800,200.000.00);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                