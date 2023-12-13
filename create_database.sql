CREATE DATABASE Resilientes;

USE Resilientes;

CREATE TABLE ParceiroA (
id_parceiro INT PRIMARY KEY,
Nome VARCHAR(255),
Endereco VARCHAR(255)
);

CREATE TABLE AreaB (
id_area INT PRIMARY KEY,
Nome VARCHAR(255)
);

CREATE TABLE TecnologiaC (
id_tecnologia INT PRIMARY KEY,
Nome VARCHAR(255),
id_area INT,
FOREIGN KEY (id_area) REFERENCES AreaB(id_area)
);

CREATE TABLE Parceiro_TecnologiaA (
id_parceiro INT,
id_tecnologia INT,
PRIMARY KEY (id_parceiro, id_tecnologia),
FOREIGN KEY (id_parceiro) REFERENCES ParceiroA(id_parceiro),
FOREIGN KEY (id_tecnologia) REFERENCES TecnologiaC(id_tecnologia)
);

CREATE TABLE FuncaoB (
id_funcao INT PRIMARY KEY,
Nome VARCHAR(255)
);

CREATE TABLE ColaboradorC (
id_colaborador INT PRIMARY KEY,
Nome VARCHAR(255),
id_parceiro INT,
id_funcao INT,
CPF VARCHAR(14) UNIQUE,
FOREIGN KEY (id_parceiro) REFERENCES ParceiroA(id_parceiro),
FOREIGN KEY (id_funcao) REFERENCES FuncaoB(id_funcao)
);

CREATE TABLE ProjetoA (
id_projeto INT PRIMARY KEY,
Nome VARCHAR(255),
Descricao TEXT,
id_parceiro INT,
FOREIGN KEY (id_parceiro) REFERENCES ParceiroA(id_parceiro)
);

CREATE TABLE Projeto_TecnologiaB (
id_projeto INT,
id_tecnologia INT,
PRIMARY KEY (id_projeto, id_tecnologia),
FOREIGN KEY (id_projeto) REFERENCES ProjetoA(id_projeto),
FOREIGN KEY (id_tecnologia) REFERENCES TecnologiaC(id_tecnologia)
);

CREATE TABLE Parceiro_ColaboradorC (
id_parceiro INT,
id_colaborador INT,
PRIMARY KEY (id_parceiro, id_colaborador),
FOREIGN KEY (id_parceiro) REFERENCES ParceiroA(id_parceiro),
FOREIGN KEY (id_colaborador) REFERENCES ColaboradorC(id_colaborador)
);
