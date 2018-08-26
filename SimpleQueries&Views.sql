CREATE VIEW [LessPages] AS
SELECT JobCost
FROM MainInfo
WHERE NumberOfPages > 2; 

CREATE VIEW [EquipOver] AS
SELECT JobCost
FROM Totaler
WHERE EquipmentCostTotal > EmployeeCostTotal; 

CREATE VIEW [HasReceipt] AS
SELECT JobCost
FROM SheetInfo
WHERE Receipt = 'Y'; 


CREATE VIEW [Approved] AS
SELECT JobCost, PageNumber
FROM Approval
WHERE Signed = 'Y'; 

CREATE VIEW [district] AS
SELECT District, InspectorName
FROM Area
WHERE City = 'Wauwatosa'; 


CREATE VIEW [ApprovedTotal] AS
SELECT Signed
FROM Approval
WHERE PageNumber = '1'; 

SELECT Totaler.PageNumber, SheetInfo.JobCost
FROM Totaler
INNER JOIN SheetInfo ON Totaler.JobCost = SheetInfo.JobCost;


SELECT COUNT(PageNumber), JobCost
FROM MainInfo
GROUP BY JobCost;

SELECT COUNT(SheetTotal), JobCost
FROM Totaler
GROUP BY JobCost
HAVING COUNT (SheetTotal) > 300;






