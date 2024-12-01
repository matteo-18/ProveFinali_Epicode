/* 
W12D4 - Prova Pratica Finale
Corso DataAnalyst EPICODE
DAPT0624
*/



-- CREO IL MIO DATABASE E LO SELEZIONO COME DB DI UTILIZZO

CREATE DATABASE ToysGroup;
USE ToysGroup;



-- CREO LA PRIMA TABELLA "PRODUCT" SULLA BASE DELLA PROGETTAZIONE EFFETTUATA

CREATE TABLE Product (
    ProductID INT PRIMARY KEY NOT NULL,
    ProductName VARCHAR(100),
    Size VARCHAR(30),
    Weight DECIMAL(5, 2),
    Category VARCHAR(50),
    AgeTarget VARCHAR(30),
    Brand VARCHAR(50),
    DominantColour VARCHAR(30),
    ProductionCost DECIMAL(7, 2),
    UnitPrice DECIMAL(7, 2)
);



-- POPOLO LA TABELLA PRODUCT CON 25 RIGHE (25 PRODOTTI DIVERSI)

INSERT INTO Product (ProductID, ProductName, Size, Weight, Category, AgeTarget, Brand, DominantColour, ProductionCost, UnitPrice) VALUES
(1, 'Lego Classic Bricks', 'Medium', 1.50, 'Building Sets', '4-99 years', 'LEGO', 'Multicolor', 25.50, 49.99),
(2, 'Barbie Dreamhouse', 'Large', 8.00, 'Dolls', '3-10 years', 'Mattel', 'Pink', 120.00, 199.99),
(3, 'Hot Wheels Monster Truck', 'Small', 0.30, 'Vehicles', '5-12 years', 'Mattel', 'Blue', 8.50, 14.99),
(4, 'Fisher-Price Laugh & Learn Puppy', 'Medium', 1.20, 'Educational', '1-3 years', 'Fisher-Price', 'Brown', 15.00, 29.99),
(5, 'Nerf Elite Blaster', 'Large', 2.00, 'Action Toys', '8-14 years', 'Hasbro', 'Orange', 10.50, 19.99),
(6, 'Play-Doh Super Color Pack', 'Small', 0.80, 'Creative Toys', '2-6 years', 'Hasbro', 'Multicolor', 4.50, 7.99),
(7, 'RC Helicopter', 'Medium', 1.70, 'Remote-Control Toys', '8-14 years', 'Syma', 'Red', 25.00, 45.99),
(8, 'Plush Teddy Bear', 'Large', 3.00, 'Stuffed Toys', '1-5 years', 'Aurora', 'Beige', 12.00, 24.99),
(9, 'Jigsaw Puzzle 1000 Pieces', 'Large', 1.50, 'Puzzles', '12+ years', 'Ravensburger', 'Blue', 8.00, 15.99),
(10, 'UNO Card Game', 'Small', 0.20, 'Games', '7-99 years', 'Mattel', 'Multicolor', 2.50, 6.99),
(11, 'Baby Walker', 'Large', 4.00, 'Educational', '1-3 years', 'Fisher-Price', 'Green', 35.00, 59.99),
(12, 'Transformers Action Figure', 'Medium', 0.90, 'Action Toys', '6-12 years', 'Hasbro', 'Yellow', 10.00, 19.99),
(13, 'Wooden Train Set', 'Large', 3.50, 'Building Sets', '3-8 years', 'Brio', 'Natural', 40.00, 79.99),
(14, 'Baby Doll with Accessories', 'Medium', 2.00, 'Dolls', '3-8 years', 'Baby Alive', 'Pink', 20.00, 34.99),
(15, 'Glow in the Dark Slime', 'Small', 0.50, 'Creative Toys', '5-12 years', 'Cra-Z-Art', 'Green', 3.00, 5.99),
(16, 'Electric Toy Guitar', 'Medium', 1.80, 'Educational', '3-7 years', 'VTech', 'Black', 25.00, 49.99),
(17, 'Toy Drone with Camera', 'Medium', 2.20, 'Remote-Control Toys', '10-16 years', 'DJI', 'White', 150.00, 299.99),
(18, 'Rubik’s Cube 3x3', 'Small', 0.25, 'Puzzles', '8-99 years', 'Rubik’s', 'Multicolor', 8.00, 14.99),
(19, 'Play Kitchen Set', 'Large', 6.50, 'Role Play', '2-6 years', 'KidKraft', 'Red', 60.00, 129.99),
(20, 'Stuffed Unicorn Toy', 'Medium', 0.80, 'Stuffed Toys', '2-6 years', 'Aurora', 'White', 18.00, 29.99),
(21, 'Slinky Original', 'Small', 0.20, 'Classic Toys', '6-12 years', 'Slinky', 'Silver', 4.00, 7.99),
(22, 'Magic 8 Ball', 'Small', 0.30, 'Novelty Toys', '6-12 years', 'Mattel', 'Black', 5.00, 10.99),
(23, 'Wooden Building Blocks', 'Large', 4.00, 'Building Sets', '2-5 years', 'Melissa & Doug', 'Natural', 20.00, 39.99),
(24, 'Toy Microscope', 'Medium', 1.50, 'Educational', '8-14 years', 'AmScope', 'White', 50.00, 89.99),
(25, 'RC Race Car', 'Small', 1.20, 'Remote-Control Toys', '7-12 years', 'Traxxas', 'Red', 25.00, 49.99);



-- CREO LA SECONDA TABELLA "REGION" SULLA BASE DELLA PROGETTAZIONE EFFETTUATA

CREATE TABLE Region (
    CityID INT PRIMARY KEY NOT NULL,
    CityName VARCHAR(100),
    RegionID SMALLINT NOT NULL,
    RegionName VARCHAR(100)
);



-- POPOLO LA TABELLA REGION CON 15 RIGHE (15 PRODOTTI DIVERSI)

INSERT INTO Region (CityID, CityName, RegionID, RegionName) 
VALUES
(1, 'New York', 1, 'United States'),
(2, 'Los Angeles', 1, 'United States'),
(3, 'Toronto', 2, 'Canada'),
(4, 'Vancouver', 2, 'Canada'),
(5, 'London', 3, 'United Kingdom'),
(6, 'Manchester', 3, 'United Kingdom'),
(7, 'Paris', 4, 'France'),
(8, 'Marseille', 4, 'France'),
(9, 'Berlin', 5, 'Germany'),
(10, 'Munich', 5, 'Germany'),
(11, 'Tokyo', 6, 'Japan'),
(12, 'Osaka', 6, 'Japan'),
(13, 'Sydney', 7, 'Australia'),
(14, 'Melbourne', 7, 'Australia'),
(15, 'Rio de Janeiro', 8, 'Brazil');



-- CREO LA SECONDA TABELLA "SALES" SULLA BASE DELLA PROGETTAZIONE EFFETTUATA

CREATE TABLE Sales (
    SalesOrderNumber INT NOT NULL,
    SalesOrderLineNumber INT NOT NULL,
    ProductID INT NOT NULL,
    OrderQuantity SMALLINT,
    CityID INT NOT NULL,
    PRIMARY KEY (SalesOrderNumber, SalesOrderLineNumber),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CityID) REFERENCES Region(CityID)
);



/* POPOLO LA TABELLA SALES CON 110 RIGHE (CIASCUNA RELATIVA AD UNA
 COMBINAZIONE DI SALESORDERNUMBER E SALESORDERLINENUMBER DIVERSA) */
 
INSERT INTO Sales (SalesOrderNumber, SalesOrderLineNumber, ProductID, OrderQuantity, CityID) 
VALUES 
(1001, 1, 5, 45, 3),
(1001, 2, 8, 30, 12),
(1001, 3, 12, 15, 1),
(1002, 1, 19, 50, 7),
(1002, 2, 9, 22, 14),
(1003, 1, 10, 70, 9),
(1003, 2, 25, 15, 5),
(1004, 1, 1, 40, 2),
(1004, 2, 18, 60, 6),
(1004, 3, 4, 35, 8),
(1005, 1, 11, 25, 13),
(1005, 2, 2, 20, 4),
(1005, 3, 18, 55, 10),
(1006, 1, 6, 60, 15),
(1006, 2, 14, 30, 11),
(1006, 3, 20, 40, 1),
(1007, 1, 16, 10, 7),
(1007, 2, 21, 50, 12),
(1008, 1, 4, 15, 3),
(1008, 2, 22, 60, 2),
(1009, 1, 13, 75, 8),
(1009, 2, 17, 50, 5),
(1010, 1, 12, 40, 14),
(1010, 2, 5, 30, 9),
(1011, 1, 23, 35, 13),
(1011, 2, 8, 50, 10),
(1011, 3, 11, 10, 4),
(1012, 1, 9, 45, 15),
(1012, 2, 6, 20, 6),
(1012, 3, 13, 60, 7),
(1013, 1, 24, 30, 12),
(1013, 2, 16, 25, 11),
(1013, 3, 17, 10, 3),
(1014, 1, 1, 50, 5),
(1014, 2, 2, 40, 8),
(1015, 1, 14, 35, 9),
(1015, 2, 6, 60, 10),
(1016, 1, 8, 50, 2),
(1016, 2, 10, 45, 6),
(1017, 1, 15, 20, 4),
(1017, 2, 20, 55, 13),
(1018, 1, 19, 60, 1),
(1018, 2, 4, 30, 11),
(1019, 1, 18, 25, 7),
(1019, 2, 13, 35, 12),
(1020, 1, 21, 40, 9),
(1020, 2, 5, 50, 14),
(1021, 1, 24, 60, 3),
(1021, 2, 9, 30, 8),
(1021, 3, 3, 45, 13),
(1022, 1, 8, 25, 5),
(1022, 2, 16, 10, 2),
(1022, 3, 7, 55, 4),
(1023, 1, 12, 20, 6),
(1023, 2, 19, 50, 15),
(1023, 3, 22, 60, 7),
(1024, 1, 5, 15, 10),
(1024, 2, 20, 30, 12),
(1025, 1, 25, 50, 1),
(1025, 2, 3, 40, 6),
(1026, 1, 14, 60, 3),
(1026, 2, 17, 25, 9),
(1027, 1, 10, 35, 7),
(1027, 2, 23, 50, 13),
(1028, 1, 13, 45, 4),
(1028, 2, 8, 30, 5),
(1029, 1, 9, 60, 8),
(1029, 2, 2, 25, 12),
(1030, 1, 6, 50, 11),
(1030, 2, 12, 20, 1),
(1031, 1, 18, 40, 15),
(1031, 2, 5, 35, 6),
(1032, 1, 15, 30, 10),
(1032, 2, 10, 50, 2),
(1033, 1, 21, 60, 4),
(1033, 2, 23, 15, 7),
(1034, 1, 11, 55, 13),
(1034, 2, 4, 40, 9),
(1035, 1, 2, 45, 8),
(1035, 2, 1, 30, 6),
(1036, 1, 7, 35, 2),
(1036, 2, 19, 25, 5),
(1037, 1, 22, 60, 1),
(1037, 2, 20, 50, 10),
(1038, 1, 13, 10, 11),
(1038, 2, 8, 40, 3),
(1039, 1, 4, 25, 7),
(1039, 2, 12, 50, 14),
(1040, 1, 10, 45, 6),
(1040, 2, 5, 60, 13),
(1041, 1, 3, 30, 4),
(1041, 2, 7, 25, 2),
(1042, 1, 16, 50, 12),
(1042, 2, 23, 45, 8),
(1043, 1, 9, 35, 3),
(1043, 2, 17, 60, 15),
(1044, 1, 11, 60, 5),
(1044, 2, 24, 30, 6),
(1045, 1, 8, 40, 10),
(1045, 2, 12, 15, 1),
(1046, 1, 5, 60, 13),
(1046, 2, 14, 25, 11),
(1047, 1, 2, 50, 7),
(1047, 2, 21, 45, 9),
(1048, 1, 23, 30, 6),
(1048, 2, 4, 20, 8),
(1049, 1, 7, 55, 10),
(1049, 2, 19, 40, 14),
(1050, 1, 16, 10, 4),
(1050, 2, 10, 50, 2);



/* DATO CHE MI ERO DIMENTICATO, AGGIUNGO LA COLONNA 
RELATIVA ALLA DATA DELL' ORDINE NELLA TABELLA SALES */

ALTER TABLE Sales
ADD COLUMN OrderDate DATE;



/* POPOLO LA NUOVA COLONNA ASSEGNANDO UNA 
DATA UNIVOCA PER CIASCUN SALESORDERNUMBER.
PER FARE QUESTO, PASSO ATTRAVERSO UNA TABELLA DI 
LAVORAZIONE CHIAMATA UNIQUEDATES NELLA QUALE 
ASSEGNO AD OGNI SALESORDERNUMBER UNA DATA CASUALE
E POI FACENDO LA JOIN CON LA TABELLA SALES, AGGIORNANDOLA */

WITH UniqueDates AS (
    SELECT DISTINCT 
        SalesOrderNumber, 
        DATE_SUB(CURDATE(), INTERVAL FLOOR(1 + (RAND() * 1095)) DAY) AS RandomDate
    FROM Sales
)
UPDATE Sales s
JOIN UniqueDates u
ON s.SalesOrderNumber = u.SalesOrderNumber
SET s.OrderDate = u.RandomDate;



/* PER ESIGENZE DI CONSEGNA DELL'ESERCIZIO HO SCRITTO
QUESTE TRE QUERY PER MODIFICARE LA TABELLA SALES IN MODO
CHE 3 PRODUCTID NON COMPAIANO NELLA TABELLA SALES, QUINDI
CHE I PRODOTTI RELATIVI RISULTINO INVENDUTI */

UPDATE Sales
SET ProductID = 6
WHERE ProductID = 7;

UPDATE Sales
SET ProductID = 12
WHERE ProductID = 3;

UPDATE Sales
SET ProductID = 14
WHERE ProductID = 15;



/* CREO QUESTA VIEW ALLO SCOPO DI AVERE SEMPRE DISPONIBILI
IN UN'UNICA TABELLA TUTTE LE INFORMAZIONI RELATIVE 
AD OGNI SINGOLA VENDITA, SIA QUELLE PROVENIENTI DALLA 
TABELLA PRODUCT, SIA QUELLE PROVENIENTI DALLA TABELLA REGION */

CREATE VIEW vw_SalesInfo
AS ( 
	SELECT
		SalesOrderNumber
		, SalesOrderLineNumber
        , OrderDate
		, p.ProductID
        , ProductName
		, Size
		, Weight
		, Category
		, AgeTarget
		, Brand
		, DominantColour
		, ProductionCost
		, UnitPrice
        , r.CityID
		, CityName
		, RegionID
		, RegionName
		, OrderQuantity
        , OrderQuantity * ProductionCost AS TotalProductionCost
		, UnitPrice * OrderQuantity AS SalesAmount
        , (UnitPrice * OrderQuantity) - (OrderQuantity * ProductionCost) AS Profits
	FROM
		Sales s
		JOIN
		Product p
		ON
		s.ProductID = p.ProductID
			JOIN
            Region r
            ON
            r.CityID = s.CityID
	ORDER BY 
		SalesOrderNumber, SalesOrderLineNumber);
        


-------- INIZIO A RISPONDERE ALLE RICHIESTE --------



/* 1. Verificare che i campi definiti come PK siano univoci. 

MEDIANTE QUESTE TRE QUERY VERIFICO CHE I CAMPI DEFINITI COME
PRIMARY KEY NELLA COSTRUZIONE DELLE TABELLE SIANO UNIVOCI, EFFETTUANDO 
UN CONTEGGIO DELLE RIGHE TOTALI DELLE TABELLE E CONFRONTANDOLO CON
IL CONTEGGIO DEI VALORI UNIVOCI DELLA COLONNA PK.
INOLTRE, VERIFICO CHE IN QUEST'ULTIMA NON CI SIANO VALORI NULLI.*/

-- Product
SELECT
	COUNT(*) AS RigheTotali
    , COUNT(DISTINCT ProductID) AS ConteggioValUinvociPK
    , (SELECT COUNT(ProductID) FROM Product WHERE ProductID IS NULL) AS ConteggioValNulliPK
FROM
	Product;
    
-- Region
SELECT
	COUNT(*) AS RigheTotali
    , COUNT(DISTINCT CityID) AS ConteggioValUinvociPK
    , (SELECT COUNT(CityID) FROM Region WHERE CityID IS NULL) AS ConteggioValNulliPK
FROM
	Region;
    
-- Sales
SELECT
	COUNT(*) AS RigheTotali
    , COUNT(DISTINCT CONCAT(SalesOrderNumber, SalesOrderLineNumber)) AS ConteggioValUinvociPK
    , (SELECT COUNT(CONCAT(SalesOrderNumber, SalesOrderLineNumber)) FROM Sales WHERE CONCAT(SalesOrderNumber, SalesOrderLineNumber)  IS NULL) AS ConteggioValNulliPK
FROM
	Sales;
    
    
    
/* 2. Esporre l’elenco dei soli prodotti venduti e 
per ognuno di questi il fatturato totale per anno. */

SELECT
	ProductID AS ID_Prodotto
	, ProductName AS NomeProdotto
	, YEAR(OrderDate) AS AnnoOrdine
	, SUM(OrderQuantity) AS VenditeTotali
	, SUM(SalesAmount) AS RicaviTotali
FROM
	vw_salesinfo
GROUP BY
	ProductID, YEAR(OrderDate)
ORDER BY 
	ProductID, YEAR(OrderDate);



/* 3. Esporre il fatturato totale per stato per anno. 
Ordina il risultato per data e per fatturato decrescente.*/

SELECT
	RegionName AS NomeStato
	, YEAR(OrderDate) AS AnnoOrdine
	, SUM(SalesAmount) AS RicaviTotali
FROM
	vw_salesinfo
GROUP BY 
	RegionName, YEAR(OrderDate)
ORDER BY
	YEAR(OrderDate), SUM(SalesAmount) DESC;
    
    
    
/* Rispondere alla seguente domanda: qual è la categoria 
di articoli maggiormente richiesta dal mercato? 

LA CATEGORIA CON PIU' VENDITE E' "EDUCATIONAL".
PER SCOPRIRLO HO RAGGRUPPATO LE VENDITE PER CATEGORIA,
LE HO ORDINATE IN BASE A NUMERO DI VENDITE DECRESCENTE 
E FILTRATO SOLO LA PRIMA RIGA*/

SELECT
	Category AS Categoria
	, COUNT(*) AS N_Vendite
FROM
	vw_salesinfo
GROUP BY
	Category
ORDER BY
	COUNT(*) DESC
LIMIT 1;

  

/* 5. Rispondere alla seguente domanda: quali sono, se ci sono, 
i prodotti invenduti? Proponi due approcci risolutivi differenti. 

I PRODOTTI INVENDUTI SONO 3: "Hot Wheels Monster Truck", "RC Helicopter" 
E "Glow in the Dark Slime". */


-- Risoluzione con subquery
SELECT
	ProductID AS ID_Prodotto
	, ProductName AS NomeProdotto
FROM
	Product
WHERE ProductID NOT IN (
						SELECT
							ProductID
						FROM
							Sales);

-- Risoluzione con JOIN
SELECT
	p.ProductID AS ID_Prodotto
	, ProductName AS NomeProdotto
FROM
	Product p
    LEFT JOIN
    Sales s
    ON
	p.ProductID = s.ProductID
WHERE
	SalesOrderNumber IS NULL;
    


/* Esporre l’elenco dei prodotti con la rispettiva 
ultima data di vendita (la data di vendita più recente) */

SELECT
	ProductID AS ID_Prodotto
    , ProductName AS NomeProdotto
    , MAX(OrderDate) AS DataUltimaVendita
FROM
	vw_salesinfo
GROUP BY
	ProductID
ORDER BY
	ProductID;