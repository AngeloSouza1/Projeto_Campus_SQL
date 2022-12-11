-- SQLite

--Consultando todos os clientes da tabela Customers
SELECT * FROM CUSTOMERS; 

--Construa uma query SQL para editar o campo e-mail do cliente com nome Carolina,
-- onde devemos trocar de “carol@ig.com.br” para “carolina@campuscode.com.br”.
UPDATE CUSTOMERS SET EMAIL ='carolina@campuscode.com.br' WHERE NAME='Carolina';

--Construa uma query SQL para editar a data de nascimento do cliente com nome Josefa
-- para “1986-06-19”.
UPDATE CUSTOMERS SET BIRTH_DATE ='1986-06-19' WHERE NAME='Josefa';

 --Construa uma query SQL para editar o ano do automóvel com nome Fiat Cronos de “2022” 
 --para “2019” da tabela de CARS
SELECT * FROM CARS;
UPDATE CARS SET YEAR = 2019  WHERE NAME ='Fiat Cronos' AND YEAR = 2022;

--Construa uma query SQL para excluir o automóvel com nome Hyundai HB20 1.6 da tabela de CARS
DELETE FROM CARS WHERE NAME ='Hyundai HB20 1.6';

--Construa uma query SQL para alterar o nome da coluna “PHONE” da tabela de EMPLOYEES, 
--para “PHONE NUMBER”
SELECT * FROM EMPLOYEES; 
ALTER TABLE EMPLOYEES RENAME PHONE TO PHONE_NUMBER;

 --Construa uma consulta capaz de exibir somente o name, lastname e email dos 
 --clientes que moram no estado de SP
SELECT NAME, 
       LASTNAME,
       EMAIL,
       STATE  FROM CUSTOMERS   WHERE STATE = 'SP';

--Construa uma consulta capaz de exibir somente os automóveis que estão com o status “Liberado”
SELECT * FROM CARS;
SELECT NAME,
       YEAR,
       COLOR,
       KM,
       STATUS FROM CARS WHERE  STATUS = 'Liberado';
       
--Construa uma consulta capaz de exibir todos os automóveis do ano 2016.
SELECT NAME,
       YEAR,
       COLOR,
       KM,
       STATUS FROM CARS WHERE   YEAR = 2016;

--Construa uma consulta capaz de exibir todos os funcionários e seus respectivos cargos
SELECT * FROM EMPLOYEES;
SELECT * FROM POSITIONS;
SELECT E.ID AS 'Código',
       E.NAME AS 'Funcionário',
       P.DESCRIPTION AS 'Cargo' FROM  EMPLOYEES AS 'E'
    JOIN POSITIONS AS 'P' ON (P.ID = E.POSITION_ID);

--Construa uma consulta capaz de exibir somente os funcionários que realizaram mais 
--ou igual a 2 locações.
SELECT * FROM EMPLOYEES;
SELECT * FROM LOCATIONS;
UPDATE LOCATIONS SET EMPLOYEE_ID ='6' WHERE ID=6;

SELECT  E.NAME,
        COUNT(L.EMPLOYEE_ID) AS '2 OU MAIS LOCAÇÕES'
        FROM   LOCATIONS AS 'L'
 INNER JOIN EMPLOYEES AS 'E' ON (L.EMPLOYEE_ID = E.ID)
 GROUP BY E.NAME
 HAVING COUNT(L.EMPLOYEE_ID)>=2

--Construa uma consulta capaz de exibir somente os clientes que realizaram mais ou 
--igual a 2 locações
SELECT * FROM CUSTOMERS;
SELECT * FROM LOCATIONS;

SELECT  C.NAME,
        COUNT(L.CUSTOMER_ID) AS '2 OU MAIS LOCAÇÕES'
        FROM   LOCATIONS AS 'L'
 INNER JOIN CUSTOMERS AS 'C' ON (L.CUSTOMER_ID = C.ID)
 GROUP BY C.NAME
 HAVING COUNT(L.CUSTOMER_ID)>=2


--Construa uma consulta capaz de exibir todas as locações realizadas, 
--assim como também o nome do cliente, do automóvel e do funcionário vinculados em cada locação
SELECT * FROM CUSTOMERS;
SELECT * FROM LOCATIONS;
SELECT * FROM EMPLOYEES;

SELECT  L.ID,
        L.START_DATE,
        L.END_DATE,
        L.TOTAL,
        C.NAME  AS 'CLIENTE',
        CR.NAME AS 'AUTOMÓVEL',   
        E.NAME  AS 'FUNCIONÁRIO' FROM   LOCATIONS AS 'L'
 
 INNER JOIN CUSTOMERS AS 'C'  ON (L.CUSTOMER_ID = C.ID)
 INNER JOIN CARS      AS 'CR' ON (L.CAR_ID = CR.ID)
 INNER JOIN EMPLOYEES AS 'E'  ON (L.EMPLOYEE_ID = E.ID)

-- Construa uma consulta capaz de exibir quantas locações existem na tabela de LOCATIONS
SELECT COUNT(ID) as  'QTDE DE LOCAÇÕES' FROM LOCATIONS;

--  Construa uma consulta capaz de exibir todas as locações realizadas
--  entre as datas “2022-05-20” a “2022-12-25”
SELECT * FROM LOCATIONS;

SELECT  L.ID,
        L.START_DATE,
        L.END_DATE,
        L.TOTAL,
        C.NAME  AS 'CLIENTE',
        CR.NAME AS 'AUTOMÓVEL',   
        E.NAME  AS 'FUNCIONÁRIO' FROM   LOCATIONS AS 'L'

INNER JOIN CUSTOMERS AS 'C'  ON (L.CUSTOMER_ID = C.ID)
 INNER JOIN CARS      AS 'CR' ON (L.CAR_ID = CR.ID)
 INNER JOIN EMPLOYEES AS 'E'  ON (L.EMPLOYEE_ID = E.ID)

WHERE L.START_DATE BETWEEN '2022-05-20' AND '2022-12-25';