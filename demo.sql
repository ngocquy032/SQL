USE AdventureWorks2019
GO 
//lấy tất cả dữ liệu từ bảng
SELECT * FROM HumanResources.Employee;

//chọn bất kì phần tử nào từ bảng
SELECT jobTitle , BirthDate
FROM HumanResources.Employee;

//thay đổi tên
SELECT BirthDate AS 'nam sinh'
FROM HumanResources.Employee;

// lọc giá trị trùng lặp
SELECT DISTINCT OrganizationLevel
FROM HumanResources.Employee;

//
SELECT * FROM HumanResources.Employee
WHERE SickLeaveHours > 60

// lọc các chữ cái bắt đầu hoặc kết thúc ( bắt đầu A% or kết thúc %a end chữ đầu và cuối %a% )  
SELECT * FROM HumanResources.Employee
WHERE JobTitle LIKE 'P%'

// các giá trị NULL xác định or không xác định
SELECT * FROM HumanResources.Employee
WHERE OrganizationNode IS NOT NULL

SELECT * FROM HumanResources.Employee
WHERE OrganizationNode IS  NULL

// tìm các phần tử nàm ở giữa 2 số hoăc chữ
SELECT * FROM HumanResources.Employee
WHERE VacationHours BETWEEN 10 AND 34

// thêm ddkien and để tìm phần tử nằm giữa số và chữ nếu tc ddkien là đúng
SELECT * FROM HumanResources.Employee
WHERE VacationHours BETWEEN 10 AND 34
AND SalariedFlag > 0;

//bất kì điều kiện hoặc naod đúng
SELECT * FROM HumanResources.Employee
WHERE OrganizationLevel > 2
	OR MaritalStatus = 'M';

// sắp xếp theo thứ tựu a-z and z-a
SELECT * FROM HumanResources.Employee
ORDER BY JobTitle

// sắp xếp a - z
SELECT * FROM HumanResources.Employee
ORDER BY JobTitle ASC

// sắp xếp z - a
SELECT * FROM HumanResources.Employee
ORDER BY JobTitle DESC

// sắp xếp gtri ttt của 2 bange 
SELECT OrganizationLevel , JobTitle 
FROM HumanResources.Employee
ORDER BY JobTitle

// sắp xếp stt có giới hạn
SELECT * FROM HumanResources.Employee
ORDER BY JobTitle ASC LIMIT 3








	
