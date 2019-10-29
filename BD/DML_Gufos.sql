USE Gufos

SELECT * from Tipo_usuario

INSERT INTO Tipo_usuario	(Titulo) 
VALUES
							('Administrador'),
							('Aluno')

INSERT INTO Usuario		(Nome,Email,Senha,Tipo_usuario_id)
VALUES					('Administrador','adm@adm.com','123',1),
						('Ariel','ariel@gmeail.com','123',2)


INSERT INTO Localizacao(CNPJ,Razao_social,Endereco)
VALUES					('12345678901234', 'Escola Senai de Informática', 'Al. Barão de Limeira 539')

INSERT INTO Categoria (Titulo)
VALUES
					('Desenvolvimento'),
					('HTML e CSS'),
					('Marketing')


INSERT INTO Presenca	(Evento_id,Usuario_id,Presenca_status)
VALUES					(1,1,'AGUARDANDO'),
						(1,2,'CONFIRMAD')
						

INSERT INTO Eventos (Titulo,Categoria_id,Acesso_livre,Data_evento,Localizacao_id)
VALUES
					('C#',2,0,'2019-08-07T18:00:00',1),
					('Estrutura Semântica',2,1,GETDATE(),1)



SELECT * from Localizacao
