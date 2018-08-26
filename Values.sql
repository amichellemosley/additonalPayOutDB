USE CostPlusDB

INSERT INTO MainInfo(PageNumber, DOPNumber, JobCost, WorkRequestNumber, InitialEmailDate, InspectorName, NumberOfPages)
VALUES ('1', 'DOP1028', '18AA3324', '456789', '2018-08-08', 'Mosley', '1');

INSERT INTO Approval(Signed, NeedReSigned, PageNumber, JobCost)
VALUES ('Y', 'N', '1', '18AA3324');

INSERT INTO Area(District, PageNumber, InspectorName, JobAddress, City, JobCost)
VALUES ('Milwaukee', '1', 'Mosley', '1200 North Road', 'Wauwatosa', '18AA3324');

INSERT INTO SheetInfo(JobCost, DOPNumber, EmployeeName, EmployeeClassification, EquipmentName, EquipmentClassification, TimeStatus, PageNumber, Receipt)
VALUES ('18AA3324', 'DOP1028', 'BRAD SMITH', 'F1', 'TRUCK', 'TK01', 'STR', '1', 'N');

INSERT INTO Totaler(EmployeeClassification, EquipmentClassification, TimeStatus, EquipmentCostTotal, EmployeeCostTotal, SheetTotal, ReceiptTotal, JobCost, PageNumber)
VALUES ('F1', 'TK01', 'STR', '300', '1500', '1800', '0', '18AA3324', '1');

