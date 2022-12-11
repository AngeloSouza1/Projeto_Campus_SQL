-- SQLite
--Criando a tabela CAR_BRAND(Marcas)
CREATE TABLE CAR_BRAND(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    BRAND_NAME VARCHAR(32)
    );

--Consultando itens da tabela CAR_BRAND
SELECT * FROM CAR_BRAND;

--Inserindo multiplos registros na  tabela CAR_BRAND(Marcas)
INSERT INTO  CAR_BRAND(BRAND_NAME)
                 VALUES('Chevrolet'),
                        ('Toyota'),  
                        ('Hyundai'),  
                        ('Volkswagen'), 
                        ('Jeep'), 
                        ('Renault'), 
                        ('Honda'), 
                        ('Fiat');
                       

                   