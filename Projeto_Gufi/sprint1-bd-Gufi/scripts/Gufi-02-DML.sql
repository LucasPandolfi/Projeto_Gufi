USE Gufi_Tarde;

-- Inserindo dados
INSERT INTO TipoUsuario (TituloTipoUsuario)
VALUES ('Administrador'), ('Comum');

INSERT INTO TipoEvento (TituloTipoEvento)
VALUES ('C#'), ('React'), ('SQL');

INSERT INTO Usuario (NomeUsuario, Email, Senha, Genero, DataNascimento, IdTipoUsuario)
VALUES ('Administrador', 'adm@adm.com', 'adm123', 'N�o informado', '06/02/2020', 1),
		('Carol', 'carol@email.com', 'carol123', 'Feminino', '06/02/2020', 2),
		 ('Saulo', 'saulo@email.com', 'saulo123', 'Masculino', '06/02/2020', 2);

INSERT INTO Usuario (NomeUsuario, Email, Senha, Genero, DataNascimento, IdTipoUsuario)
VALUES ('Matheus', 'math@Eboy.com', 'math123', 'N�o informado', '07/02/2024', 2);

INSERT INTO Usuario (NomeUsuario, Email, Senha, Genero, DataNascimento, IdTipoUsuario)
VALUES ('Lucas', 'lucas@Email.com', 'lucas123', 'Masculino', '07/01/2001', 2),
		('Davi', 'davi@Email.com', 'davi123', 'Masculino', '26/01/2002', 2)

INSERT INTO Instituicao (CNPJ, NomeFantasia, Endereco)
VALUES ('11111111111111', 'Escola SENAI de Inform�tica', 'Alameda Bar�o de Limeira, 538')

INSERT INTO Evento (NomeEvento, DataEvento, Descricao, AcessoLivre, IdInstituicao, IdTipoEvento)
VALUES ('Introdu��o ao C#', '07/02/2020', 'Conceitos sobre os pilares da programa��o orientada a objetos', 1, 1, 1),
		('Ciclo de vida', '07/02/2020', 'Como utilizar o ciclo de vida com ReactJs', 0, 1, 2),
		 ('Optimiza��o de banco de dados', '07/02/2020', 'Aplica��o de �ndices clusterizados e n�o clusterizados', 1, 1, 3);
		

INSERT INTO Presenca (IdUsuario, IdEvento, Situacao)
VALUES (2, 2, 'Agendada'), (2, 3, 'Confirmada'), (3, 1, 'N�o compareceu');

SELECT * FROM Presenca
SELECT * FROM TipoUsuario
SELECT * FROM TipoEvento