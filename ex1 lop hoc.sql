USE Example1
GO
CREATE TABLE LopHoc(
	StudentID int ,
	FullName nvarchar(300),
	Email varchar(150),
	Status nvarchar(20)
)
GO 
SELECT * FROM LopHoc
GO 
INSERT INTO LopHoc (StudentID, FullName , Email , Status) VALUES ('2', N'ngọc quý', 'ngocquy2414@gmail.com', 'com')

DROP TABLE LopHoc;

