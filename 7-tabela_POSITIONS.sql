-- SQLite
--Criando a tabela POSITIONS(Cargos)
CREATE TABLE POSITIONS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    DESCRIPTION VARCHAR(120)
    );

--Consultando itens da tabela POSITIONS(Cargos)
SELECT * FROM POSITIONS;

--Inserindo multiplos registros na tabela POSITIONS(Cargos)
INSERT INTO  POSITIONS(DESCRIPTION)
                 VALUES('Gerente de vendas'),
                        ('Gerente de compras'),  
                        ('Vendedor'),  
                        ('Mecânico'), 
                        ('Assistente Administrativo');
                     
                   