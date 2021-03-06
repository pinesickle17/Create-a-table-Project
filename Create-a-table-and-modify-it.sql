--CREATE A NEW TABLE

--Employee Table
CREATE TABLE Employee
(
EMP_ID varchar(100) NOT NULL, FirstName varchar(100), LastName varchar(100), Department varchar(100), Gender varchar(100), Salary decimal(18, 2), PRIMARY KEY (EMP_ID)
);

--Company Table
CREATE TABLE Company
(
Company_ID varchar(100) NOT NULL, Company_Name varchar(100), Company_Domain varchar(100), Company_Address varchar(100), Employee_ID int NOT NULL, PRIMARY KEY (Company_ID)
);


--VIEW TABLE STRUCTURE

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name='Employee'

SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_name='Company'


--CHANGING TABLE STRUCTURE

ALTER TABLE Employee
ADD Division varchar(100);

ALTER TABLE Employee
DROP COLUMN Division;

ALTER TABLE Employee
ALTER COLUMN Salary INT NOT NULL;

ALTER TABLE Company
ALTER COLUMN Employee_ID varchar(100);


--INSERT DATA INTO TABLE

--Employee Table
INSERT INTO Employee(EMP_ID, FirstName, LastName, Department, Gender, Salary)
VALUES ('E0001', 'Pujono', 'Halim', 'BI', 'Male', 4000000),
('E0002', 'Pratix', 'Aditya', 'Audit', 'Male', 6000000),
('E0003', 'Silviana', 'Pertiwi', 'BI', 'Female', 3500000),
('E0004', 'Arda', 'Rista', 'Finance', 'Female', 4000000),
('E0005', 'Reza', 'Zulfahmi', 'Audit', 'Male', 5300000),
('E0006', 'Eka', 'Ratnawati', 'Finance', 'Female', 6000000),
('E0007', 'Bagas', 'Sadewa', 'Audit', 'Male', 3500000),
('E0008', 'Mellynda', 'Septiana', 'BI', 'Female', 3750000),
('E0009', 'Derry', 'Hidayatullah', 'Audit', 'Male', 3700000),
('E0010', 'Nindya', 'Trimuliawati', 'Finance', 'Female', 6250000);

--Company Table
INSERT INTO Company(Company_ID, Company_Name, Company_Domain, Company_Address, Employee_ID)
VALUES ('C001', 'Samsan Tech', 'Business', 'Jakarta', 'E0001'),
('C002', 'MIMB Niaga', 'Banking', 'Bandung', 'E0004'),
('C003', 'Global Stock', 'Retail', 'Yogyakarta', 'E0002'),
('C004', 'Suredential', 'Insurance', 'Jakarta', 'E0006');


--UPDATING COLUMN DATA

UPDATE Employee
SET Salary = Salary + 500000
WHERE EMP_ID = 'E0001';

UPDATE Company
SET Company_Domain = 'Consultant'
WHERE Company_ID = 'C001';


--DELETING COLUMN IN TABLE

--I'm trying to create additional data as an example and then delete it

INSERT INTO Company(Company_ID, Company_Name, Company_Domain, Company_Address, Employee_ID)
VALUES ('C005', 'XYZ Company', 'Consultant', 'Lampung', 'E0003');

DELETE FROM Company
WHERE Company_ID = 'C005';


--SELECT TABLE

SELECT * FROM Employee;
SELECT * FROM Company;


--RECREATE & DELETE TABLE


--Deletes all data in a table but does not delete the table itself

---TRUNCATE Employee;
---TRUNCATE Company;

--Delete Table

---DROP TABLE Employee;
---DROP TABLE Company;
