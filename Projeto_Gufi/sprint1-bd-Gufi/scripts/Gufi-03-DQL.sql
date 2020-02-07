USE Gufi_Tarde;

--LISTANDO TODOS OS USUARIOS CADASTRADOS E SEUS DADOS SEM ID
SELECT NomeUsuario, Email, TipoUsuario.TituloTipoUsuario, DataNascimento, Genero
FROM Usuario
INNER JOIN TipoUsuario ON TipoUsuario.IdTipoUsuario = Usuario.IdTipoUsuario



--LISTANDO TODAS AS INSTITUIÇOES CADASTRADAS
SELECT * FROM Instituicao

--LISTANDO TODOS OS TIPO DE EVENTOS
SELECT TituloTipoEvento FROM TipoEvento

--LISTANDO TODOS OS EVENTOS
SELECT NomeEvento, DataEvento, Descricao, CASE WHEN AcessoLivre = 1 THEN 'Público' ELSE 'Privado' END AS
TipoAcesso, Instituicao.NomeFantasia, Instituicao.CNPJ, Instituicao.Endereco, TipoEvento.TituloTipoEvento
FROM Evento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Evento.IdTipoEvento

--LISTANDO APENAS OS EVENTOS QUE SÃO PÚBLICOS 
SELECT NomeEvento, DataEvento, Descricao, CASE WHEN AcessoLivre = 1 THEN 'Público' ELSE 'Privado' END AS TipoAcesso, 
Instituicao.NomeFantasia, TipoEvento.TituloTipoEvento
FROM Evento
INNER JOIN Instituicao ON Instituicao.IdInstituicao = Evento.IdInstituicao
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Evento.IdTipoEvento
WHERE AcessoLivre = 1;


--LISTANDO TODOS OS EVENTOS QUE UM DETERMINADO USUARIO PARTICIPOU

CREATE PROCEDURE ListarEventosPorUsuario1
@UsuariosId INT 
AS
SELECT Evento.NomeEvento, Evento.DataEvento,CASE WHEN AcessoLivre = 1 THEN 'Publico'  ELSE 'Privado' END AS TipoAcesso, 
TipoEvento.TituloTipoEvento, Evento.Descricao, Usuario.NomeUsuario, Usuario.Email, Usuario.DataNascimento, Usuario.Genero,
FROM Presenca 
INNER JOIN Evento ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Presenca.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
WHERE Usuario.IdUsuario = @UsuariosId;

EXECUTE ListarEventosPorUsuario1 2;

--EXTRAS
SELECT * FROM Presenca
SELECT * FROM Evento

SELECT Evento.NomeEvento, Evento.DataEvento,CASE WHEN AcessoLivre = 1 THEN 'Publico'  ELSE 'Privado' END AS TipoAcesso, 
TipoEvento.TituloTipoEvento, Evento.Descricao, Usuario.NomeUsuario, Usuario.Email, Usuario.DataNascimento, Usuario.Genero
FROM Presenca 
INNER JOIN Evento ON Evento.IdEvento = Presenca.IdEvento
INNER JOIN TipoEvento ON TipoEvento.IdTipoEvento = Presenca.IdEvento
INNER JOIN Usuario ON Usuario.IdUsuario = Presenca.IdUsuario
WHERE Presenca.Situacao = 'Confirmada';


