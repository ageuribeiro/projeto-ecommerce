SELECT * FROM HumanResources.Department;

SELECT DepartmentID, GroupName 
FROM HumanResources.Department;

SELECT DISTINCT GroupName 
FROM HumanResources.Department;

SELECT * 
FROM HumanResources.Department 
WHERE GroupName = 'Executive General and Administration';

SELECT *
FROM HumanResources.Department 
WHERE GroupName = 'Inventory Management';

SELECT *
FROM HumanResources.Department 
WHERE GroupName = 'Manufacturing';

SELECT *
FROM HumanResources.Department 
WHERE GroupName = 'Quality Assurance';

SELECT *
FROM HumanResources.Department 
WHERE GroupName = 'Research and Development';

SELECT *
FROM HumanResources.Department 
WHERE GroupName = 'Sales and Marketing';