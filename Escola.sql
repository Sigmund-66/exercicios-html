DROP SCHEMA IF EXISTS ESCOLA;
CREATE schema ESCOLA;
USE ESCOLA;

CREATE TABLE professor (
	nome VARCHAR(200) NOT NULL,
	titulacao VARCHAR(75) NOT NULL,
	matricula INT PRIMARY KEY 
);

CREATE TABLE turma (
	codigo INT PRIMARY KEY,
	semestre TINYINT PRIMARY KEY 
);

CREATE TABLE leciona (
	codigo_turma INT,
	matricula_professor INT,
	FOREIGN KEY(codigo_turma) REFERENCES turma(codigo
		ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY(matricula_professor) REFERENCES professor(matricula)
		ON UPDATE CASCADE ON DELETE RESTRICT,
	PRIMARY KEY(matricula_professor,codigo_turma)
);

CREATE TABLE campus (
	codigo INT PRIMARY KEY,
	cidade VARCHAR(75) NOT NULL,
	endereco VARCHAR(75) NOT NULL
);

CREATE TABLE aluno (
	nome VARCHAR(200) NOT NULL,
	matricula INT PRIMARY KEY,
	rendimento FLOAT NOT NULL,
	codigo_turma INT NOT NULL,
	codigo_campus INT NOT NULL,
	FOREIGN KEY(codigo_campus) REFERENCES campus(codigo)
		ON UPDATE CASCADE ON DELETE RESTRICT,
	FOREIGN KEY(codigo_turma) REFERENCES turma(codigo)
		ON UPDATE CASCADE ON DELETE RESTRICT	
);

CREATE TABLE notebook (
	codigo SMALLINT PRIMARY KEY,
	data_compra date NOT NULL,
	matricula_professor INT,
	data_aquisicao date NOT NULL,
	FOREIGN KEY(matricula_professor) REFERENCES professor(matricula_professor)
		ON UPDATE CASCADE ON DELETE RESTRICT
)





    












