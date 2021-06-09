CREATE TABLE LOAN_ACCOUNTS
(
  ACCNO INT,
  CUST_NAME VARCHAR(15),
  LOAN_AMOUNT INT,
  INSTALLMENTS INT,
  INT_RATE INT,
  START_DATE DATE,
  INTEREST BIGINT
);
SELECT * FROM LOAN_ACCOUNTS;
ALTER TABLE LOAN_ACCOUNTS ADD COLUMN(CATEGORY VARCHAR(10));
INSERT INTO LOAN_ACCOUNTS(ACCNO,CUST_NAME,LOAN_AMOUNT,INSTALLMENTS,INT_RATE,START_DATE,INTEREST) VALUES
(1001,'R K GUPTA',300000,36,12.0,'2009-07-19',NULL),
(1002,'S P SHARMA',500000,48,10.0,'2008-03-22',NULL),
(1003,'K P JAIN',300000,36,NULL,'2007-08-03',NULL),
(1004,'M P YADAV',800000,60,10.0,'2008-06-12',NULL),
(1005,'S P SINHA',200000,38,12.5,'2010-03-01',NULL),
(1006,'P SHARMA',700000,60,12.5,'2008-05-06',NULL),
(1007,'K S DHALL',500000,48,NULL,'2008-05-03',NULL);
UPDATE LOAN_ACCOUNTS SET INT_RATE=11.50 WHERE INT_RATE IS NULL;
UPDATE LOAN_ACCOUNTS SET INT_RATE = 0.50 + INT_RATE WHERE LOAN_AMOUNT > 400000;
UPDATE LOAN_ACCOUNTS SET INTEREST = (LOAN_AMOUNT * INT_RATE * INSTALLMENTS)/12*100;
DELETE FROM LOAN_ACCOUNTS WHERE YEAR(START_DATE) < 2008;
DELETE FROM LOAN_ACCOUNTS WHERE CUST_NAME LIKE 'K%'; 
SELECT * FROM LOAN_ACCOUNTS WHERE INSTALLMENTS < 40;  
SELECT ACCNO,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE START_DATE < '2009-04-01';
SELECT ACCNO,INT_RATE FROM LOAN_ACCOUNTS WHERE START_DATE > '2009-04-01';
SELECT ACCNO,CUST_NAME,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE CUST_NAME LIKE '%SHARMA';
SELECT CUST_NAME,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE CUST_NAME LIKE '%A';
SELECT ACCNO,CUST_NAME,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE CUST_NAME LIKE '%A%';
SELECT ACCNO,CUST_NAME,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE NOT (CUST_NAME LIKE '%P%');
DESC LOAN_ACCOUNTS;
SELECT * FROM LOAN_ACCOUNTS ORDER BY LOAN_AMOUNT;
SELECT * FROM LOAN_ACCOUNTS ORDER BY START_DATE DESC;
SELECT * FROM LOAN_ACCOUNTS ORDER BY LOAN_AMOUNT,START_DATE DESC;
SELECT ACCNO,CUST_NAME,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE CUST_NAME LIKE 'K%';
SELECT * FROM LOAN_ACCOUNTS WHERE INT_RATE IS NULL;
SELECT * FROM LOAN_ACCOUNTS WHERE NOT(INT_RATE IS NULL);
SELECT DISTINCT LOAN_AMOUNT FROM LOAN_ACCOUNTS;
SELECT * FROM LOAN_ACCOUNTS WHERE START_DATE > '2008-12-31' AND INSTALLMENTS > 36;
SELECT CUST_NAME,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE LOAN_AMOUNT < 500000 AND INT_RATE > 12;
SELECT * FROM LOAN_ACCOUNTS WHERE YEAR(START_DATE) ='2009';
SELECT * FROM LOAN_ACCOUNTS WHERE LOAN_AMOUNT BETWEEN 400000 AND 500000;
SELECT CUST_NAME,LOAN_AMOUNT FROM LOAN_ACCOUNTS WHERE INSTALLMENTS IN(26,36,48);
SELECT CUST_NAME,LOAN_AMOUNT, IFNULL(INT_RATE,0)AS INT_RATE FROM LOAN_ACCOUNTS;
SELECT CUST_NAME,LOAN_AMOUNT, IFNULL(INT_RATE,'NO INTEREST')AS INT_RATE FROM LOAN_ACCOUNTS;

