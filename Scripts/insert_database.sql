USE Resilientes;
-- Inserindo dados na tabela ParceiroA
INSERT INTO ParceiroA (id_parceiro, Nome, Endereco) VALUES
(1, 'Parceiro1', 'Endereco1'),
(2, 'Parceiro2', 'Endereco2');

-- Inserindo dados na tabela AreaB
INSERT INTO AreaB (id_area, Nome) VALUES
(1, 'Area1'),
(2, 'Area2');

-- Inserindo dados na tabela TecnologiaC
INSERT INTO TecnologiaC (id_tecnologia, Nome, id_area) VALUES
(1, 'Tecnologia1', 1),
(2, 'Tecnologia2', 2);

-- Inserindo dados na tabela Parceiro_TecnologiaA
INSERT INTO Parceiro_TecnologiaA (id_parceiro, id_tecnologia) VALUES
(1, 1),
(2, 2);

-- Inserindo dados na tabela FuncaoB
INSERT INTO FuncaoB (id_funcao, Nome) VALUES
(1, 'Funcao1'),
(2, 'Funcao2');

-- Inserindo dados na tabela ColaboradorC
INSERT INTO ColaboradorC (id_colaborador, Nome, id_parceiro, id_funcao, CPF) VALUES
(1, 'Colaborador1', 1, 1, '123.456.789-01'),
(2, 'Colaborador2', 2, 2, '987.654.321-01');

-- Inserindo dados na tabela ProjetoA
INSERT INTO ProjetoA (id_projeto, Nome, Descricao, id_parceiro) VALUES
(1, 'Projeto1', 'Descrição do Projeto1', 1),
(2, 'Projeto2', 'Descrição do Projeto2', 2);

-- Inserindo dados na tabela Projeto_TecnologiaB
INSERT INTO Projeto_TecnologiaB (id_projeto, id_tecnologia) VALUES
(1, 1),
(2, 2);

-- Inserindo dados na tabela Parceiro_ColaboradorC
INSERT INTO Parceiro_ColaboradorC (id_parceiro, id_colaborador) VALUES
(1, 1),
(2, 2);
