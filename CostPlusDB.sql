USE CostPlusDB

CREATE TABLE MainInfo (
    PageNumber int NOT NULL,
    DOPNumber varchar(10),
    JobCost varchar(10) NOT NULL,
    WorkRequestNumber int,
    IntialEmailDate varchar(10) NOT NULL,
    InspectorName varchar(40),
    NumberOfPages int NOT NULL,
	PRIMARY KEY (PageNumber));

CREATE TABLE Totaler(
    EmployeeClassification varchar(5),
    EquipmentClassification varchar(7),
    TimeStatus varchar(4) NOT NULL,
    EquipmentCostTotal int,
    EmployeeCostTotal int,
    SheetTotal int NOT NULL,
    ReceiptTotal int,
    JobCost varchar(10) NOT NULL,
    PageNumber int NOT NULL,
	PRIMARY KEY (JobCost));

CREATE TABLE SheetInfo(
     JobCost varchar(10) NOT NULL,
     DOPNumber varchar(10),
     EmployeeName varchar(40),
     EmployeeClassification varchar(5),
     EquipmentName varchar(20),
     EquipmentNumber varchar(20),
     EquipmentClassification varchar(7),
     TimeStatus varchar (4) NOT NULL,
     PageNumber int NOT NULL,
     Receipt varchar(4) NOT NULL,
	 PRIMARY KEY (JobCost))
     ;
    
CREATE TABLE Approval(
    Signed varchar(3) NOT NULL,
    NeedReSign varchar(3) NOT NULL,
    PageNumber int NOT NULL,
    JobCost varchar(10) NOT NULL,
	PRIMARY KEY (JobCost),
	FOREIGN KEY (PageNumber) REFERENCES MainInfo(PageNumber)
    );

CREATE TABLE Area(
    District varchar(15) NOT NULL,
    PageNumber int NOT NULL,
    InspectorName varchar(30) NOT NULL,
    JobAddress varchar(50),
    City varchar(15),
    JobCost varchar(10) NOT NULL,
	PRIMARY KEY (District));
	
	
	