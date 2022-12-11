-- SQLite
--Criando a tabela CAR_MODEL(modelos)
CREATE TABLE CAR_MODELS(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    MODEL_NAME VARCHAR(120)
    );

--Consultando itens da tabela CAR_MODELS
SELECT * FROM CAR_MODELS;

--Inserindo multiplos registros na CAR_MODEL (modelos)
INSERT INTO  CAR_MODELS(MODEL_NAME)
                 VALUES ('Conversível'),
                        ('Sedã'),  
                        ('Hatch'),  
                        ('Coupé'), 
                        ('Perua'), 
                        ('SUV'), 
                        ('Picape'), 
                        ('Minivan'), 
                        ('Utilitário'), 
                        ('Buggy');

                   


         
