--Fetch all data from Employee and Company Table
SELECT * FROM Employee;
SELECT * FROM Company;

--Fetch all details of Male employee
SELECT * FROM Employee WHERE Gender='Male';

--Find maximal salary from each department
SELECT Employee.Department, MAX(Employee.Salary) FROM Employee GROUP BY Department;

--Print the name of distinct employee whose Salary is between 3000000 to 4000000
SELECT DISTINCT(Employee.FirstName) FROM Employee WHERE Salary BETWEEN 3000000 AND 4000000;

--Find employee whose Salary is equal or greater than 4000000
SELECT CONCAT(Employee.FirstName,' ',Employee.LastName) FROM Employee WHERE Salary>=4000000;

--Find employee whose name start with 'P'
SELECT * FROM Employee WHERE Employee.FirstName like 'p%';

--Fetch all employee whose coming from Finance Department
SELECT * FROM Employee WHERE Department='Finance';

--Find total salary from each Department
SELECT Employee.Department, SUM(Employee.Salary) as Total_Salary FROM Employee GROUP BY Employee.Department;

--Fetch all employee salary from the lowest to the highest
SELECT * FROM Employee ORDER BY Salary ASC;

--Find highest salary for a lady employee
SELECT * FROM Employee WHERE Salary IN (SELECT MAX(Employee.Salary) FROM Employee WHERE Gender='Female');
---or if I only want to quey her Name and her salary
SELECT CONCAT(Employee.FirstName,' ', Employee.LastName) AS 'Max_Lady_Salary', Employee.Salary FROM Employee WHERE Salary IN (SELECT MAX(Employee.Salary) FROM Employee WHERE Gender='Female');

--Find lowest salary for a man employee
SELECT * FROM Employee WHERE Salary IN (SELECT MIN(Employee.Salary) FROM Employee WHERE Gender='Male');
---or if I only want to quey his Name and his salary
SELECT CONCAT(Employee.FirstName,' ', Employee.LastName) AS 'Min_Male_Salary', Employee.Salary FROM Employee WHERE Salary IN (SELECT MIN(Employee.Salary) FROM Employee WHERE Gender='Male');

--Fetch all details from both Employee and Company table
SELECT * FROM Employee, Company WHERE EMP_ID=Employee_ID ORDER BY 1,2;
---or using INNER JOIN
SELECT * FROM Employee emp INNER JOIN Company cmp ON emp.EMP_ID=cmp.Employee_ID ORDER BY 1,2;
