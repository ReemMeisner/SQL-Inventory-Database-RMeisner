REM   Script: FAU Technology Team Inventory Management System - Group 2_ISM4133
REM   This script creates a comprehensive relational database for managing FAU Technology Team inventory, encompassing employees, equipment, assignments, maintenance, and vendors.


DROP TABLE Vendors CASCADE CONSTRAINTS;

DROP TABLE Equipment CASCADE CONSTRAINTS;

DROP TABLE Employees CASCADE CONSTRAINTS;

CREATE TABLE Employees ( 
    Employee_ID NUMBER PRIMARY KEY, 
    First_Name VARCHAR2(50), 
    Last_Name VARCHAR2(50), 
    Department VARCHAR2(100), 
    Role_Title VARCHAR2(100) 
);

CREATE TABLE Equipment ( 
    Equipment_ID NUMBER PRIMARY KEY, 
    Equipment_Name VARCHAR2(100), 
    Equipment_Type VARCHAR2(50), 
    Purchase_Date DATE, 
    Condition_Status VARCHAR2(50) 
);

CREATE TABLE Assignments ( 
    Assignment_ID NUMBER PRIMARY KEY, 
    Employee_ID NUMBER REFERENCES Employees(Employee_ID), 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Issue_Date DATE, 
    Return_Date DATE 
);

CREATE TABLE Maintenance ( 
    Maintenance_ID NUMBER PRIMARY KEY, 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Maintenance_Date DATE, 
    Description VARCHAR2(100), 
    Cost NUMBER 
);

CREATE TABLE Vendors ( 
    Vendor_ID NUMBER PRIMARY KEY, 
    Vendor_Name VARCHAR2(100), 
    Contact_Info VARCHAR2(100) 
);

INSERT INTO Employees VALUES (1, 'Jason', 'Ball', 'OIT Leadership', 'Associate Provost & CIO');

INSERT INTO Employees VALUES (2, 'Christian', 'Block', 'Infrastructure', 'Deputy CIO');

INSERT INTO Employees VALUES (3, 'Ying', 'Liu', 'Academic Tech', 'Assistant Provost');

INSERT INTO Employees VALUES (4, 'Lucy', 'Martucci', 'Fiscal Management', 'Director');

INSERT INTO Employees VALUES (5, 'Zachary', 'Macdonald', 'Client Support', 'Manager');

INSERT INTO Employees VALUES (6, 'Jennifer', 'Turner', 'Enterprise Support', 'Associate Director');

INSERT INTO Equipment VALUES (1, 'HP Monitor', 'Laptop', DATE '2024-05-10', 'Good');

INSERT INTO Equipment VALUES (2, 'Dell Laptop', 'Peripheral', DATE '2024-01-05', 'Good');

INSERT INTO Equipment VALUES (3, 'Xfinity Router', 'Network', DATE '2024-03-15', 'Needs Repair');

INSERT INTO Equipment VALUES (4, 'MacBook Pro', 'Computer', DATE '2024-06-25', 'Excellent');

INSERT INTO Equipment VALUES (5, 'Logitech Mouse', 'Peripheral', DATE '2024-07-12', 'Good');

INSERT INTO Assignments VALUES (1, 2, 1, DATE '2024-08-17', NULL);

INSERT INTO Assignments VALUES (2, 4, 2, DATE '2024-09-01', NULL);

INSERT INTO Assignments VALUES (3, 5, 4, DATE '2024-10-15', NULL);

INSERT INTO Assignments VALUES (4, 6, 5, DATE '2024-10-20', NULL);

INSERT INTO Maintenance VALUES (1, 2, DATE '2024-09-15', 'Battery Replacement', 120);

INSERT INTO Maintenance VALUES (2, 4, DATE '2024-10-10', 'Firmware Update', 50);

INSERT INTO Maintenance VALUES (3, 5, DATE '2024-10-22', 'Lens Cleansing', 25);

INSERT INTO Vendors VALUES (1, 'Tech Supply', 'techsupply@email.com');

INSERT INTO Vendors VALUES (2, 'Digital Works', 'support@digitalworks.com');

INSERT INTO Vendors VALUES (3, 'Office Gear Solutions', 'officegear@fau.edu');

CREATE TABLE Employees ( 
    Employee_ID NUMBER PRIMARY KEY, 
    First_Name VARCHAR2(50), 
    Last_Name VARCHAR2(50), 
    Department VARCHAR2(100), 
    Role_Title VARCHAR2(100) 
);

CREATE TABLE Equipment ( 
    Equipment_ID NUMBER PRIMARY KEY, 
    Equipment_Name VARCHAR2(100), 
    Equipment_Type VARCHAR2(50), 
    Purchase_Date DATE, 
    Condition_Status VARCHAR2(50) 
);

CREATE TABLE Assignments ( 
    Assignment_ID NUMBER PRIMARY KEY, 
    Employee_ID NUMBER REFERENCES Employees(Employee_ID), 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Issue_Date DATE, 
    Return_Date DATE 
);

CREATE TABLE Maintenance ( 
    Maintenance_ID NUMBER PRIMARY KEY, 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Maintenance_Date DATE, 
    Description VARCHAR2(100), 
    Cost NUMBER 
);

CREATE TABLE Vendors ( 
    Vendor_ID NUMBER PRIMARY KEY, 
    Vendor_Name VARCHAR2(100), 
    Contact_Info VARCHAR2(100) 
);

BEGIN 
   EXECUTE IMMEDIATE 'DROP TABLE Assignments CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Maintenance CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Vendors CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Equipment CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS'; 
EXCEPTION 
   WHEN OTHERS THEN 
      NULL; 
END; 
/

BEGIN 
   EXECUTE IMMEDIATE 'DROP TABLE Assignments CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Maintenance CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Vendors CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Equipment CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS'; 
EXCEPTION 
   WHEN OTHERS THEN 
      NULL; 
END; 
/

CREATE TABLE Employees ( 
    Employee_ID NUMBER PRIMARY KEY, 
    First_Name VARCHAR2(50), 
    Last_Name VARCHAR2(50), 
    Department VARCHAR2(100), 
    Role_Title VARCHAR2(100) 
);

CREATE TABLE Equipment ( 
    Equipment_ID NUMBER PRIMARY KEY, 
    Equipment_Name VARCHAR2(100), 
    Equipment_Type VARCHAR2(50), 
    Purchase_Date DATE, 
    Condition_Status VARCHAR2(50) 
);

CREATE TABLE Assignments ( 
    Assignment_ID NUMBER PRIMARY KEY, 
    Employee_ID NUMBER REFERENCES Employees(Employee_ID), 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Issue_Date DATE, 
    Return_Date DATE 
);

CREATE TABLE Maintenance ( 
    Maintenance_ID NUMBER PRIMARY KEY, 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Maintenance_Date DATE, 
    Description VARCHAR2(100), 
    Cost NUMBER 
);

CREATE TABLE Vendors ( 
    Vendor_ID NUMBER PRIMARY KEY, 
    Vendor_Name VARCHAR2(100), 
    Contact_Info VARCHAR2(100) 
);

INSERT INTO Employees VALUES (1, 'Jason', 'Ball', 'OIT Leadership', 'Associate Provost & CIO');

INSERT INTO Employees VALUES (2, 'Christian', 'Block', 'Infrastructure', 'Deputy CIO');

INSERT INTO Employees VALUES (3, 'Ying', 'Liu', 'Academic Tech', 'Assistant Provost');

INSERT INTO Employees VALUES (4, 'Lucy', 'Martucci', 'Fiscal Management', 'Director');

INSERT INTO Employees VALUES (5, 'Zachary', 'Macdonald', 'Client Support', 'Manager');

INSERT INTO Employees VALUES (6, 'Jennifer', 'Turner', 'Enterprise Support', 'Associate Director');

INSERT INTO Equipment VALUES (1, 'HP Monitor', 'Laptop', DATE '2024-05-10', 'Good');

INSERT INTO Equipment VALUES (2, 'Dell Laptop', 'Peripheral', DATE '2024-01-05', 'Good');

INSERT INTO Equipment VALUES (3, 'Xfinity Router', 'Network', DATE '2024-03-15', 'Needs Repair');

INSERT INTO Equipment VALUES (4, 'MacBook Pro', 'Computer', DATE '2024-06-25', 'Excellent');

INSERT INTO Equipment VALUES (5, 'Logitech Mouse', 'Peripheral', DATE '2024-07-12', 'Good');

INSERT INTO Assignments VALUES (1, 2, 1, DATE '2024-08-17', NULL);

INSERT INTO Assignments VALUES (2, 4, 2, DATE '2024-09-01', NULL);

INSERT INTO Assignments VALUES (3, 5, 4, DATE '2024-10-15', NULL);

INSERT INTO Assignments VALUES (4, 6, 5, DATE '2024-10-20', NULL);

INSERT INTO Maintenance VALUES (1, 2, DATE '2024-09-15', 'Battery Replacement', 120);

INSERT INTO Maintenance VALUES (2, 4, DATE '2024-10-10', 'Firmware Update', 50);

INSERT INTO Maintenance VALUES (3, 5, DATE '2024-10-22', 'Lens Cleansing', 25);

INSERT INTO Vendors VALUES (1, 'Tech Supply', 'techsupply@email.com');

INSERT INTO Vendors VALUES (2, 'Digital Works', 'support@digitalworks.com');

INSERT INTO Vendors VALUES (3, 'Office Gear Solutions', 'officegear@fau.edu');

BEGIN 
   EXECUTE IMMEDIATE 'DROP TABLE Assignments CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Maintenance CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Vendors CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Equipment CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS'; 
EXCEPTION 
   WHEN OTHERS THEN 
      NULL; 
END; 
/

BEGIN 
   EXECUTE IMMEDIATE 'DROP TABLE Assignments CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Maintenance CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Vendors CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Equipment CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS'; 
EXCEPTION 
   WHEN OTHERS THEN 
      NULL; 
END; 
/

BEGIN 
   EXECUTE IMMEDIATE 'DROP TABLE Assignments CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Maintenance CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Vendors CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Equipment CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS'; 
EXCEPTION 
   WHEN OTHERS THEN 
      NULL; 
END; 
/

CREATE TABLE Employees ( 
    Employee_ID NUMBER PRIMARY KEY, 
    First_Name VARCHAR2(50), 
    Last_Name VARCHAR2(50), 
    Department VARCHAR2(100), 
    Role_Title VARCHAR2(100) 
);

CREATE TABLE Equipment ( 
    Equipment_ID NUMBER PRIMARY KEY, 
    Equipment_Name VARCHAR2(100), 
    Equipment_Type VARCHAR2(50), 
    Purchase_Date DATE, 
    Condition_Status VARCHAR2(50) 
);

CREATE TABLE Assignments ( 
    Assignment_ID NUMBER PRIMARY KEY, 
    Employee_ID NUMBER REFERENCES Employees(Employee_ID), 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Issue_Date DATE, 
    Return_Date DATE 
);

CREATE TABLE Maintenance ( 
    Maintenance_ID NUMBER PRIMARY KEY, 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Maintenance_Date DATE, 
    Description VARCHAR2(100), 
    Cost NUMBER 
);

CREATE TABLE Vendors ( 
    Vendor_ID NUMBER PRIMARY KEY, 
    Vendor_Name VARCHAR2(100), 
    Contact_Info VARCHAR2(100) 
);

INSERT INTO Employees VALUES (1, 'Jason', 'Ball', 'OIT Leadership', 'Associate Provost & CIO');

INSERT INTO Employees VALUES (2, 'Christian', 'Block', 'Infrastructure', 'Deputy CIO');

INSERT INTO Employees VALUES (3, 'Ying', 'Liu', 'Academic Tech', 'Assistant Provost');

INSERT INTO Employees VALUES (4, 'Lucy', 'Martucci', 'Fiscal Management', 'Director');

INSERT INTO Employees VALUES (5, 'Zachary', 'Macdonald', 'Client Support', 'Manager');

INSERT INTO Employees VALUES (6, 'Jennifer', 'Turner', 'Enterprise Support', 'Associate Director');

INSERT INTO Equipment VALUES (1, 'HP Monitor', 'Laptop', DATE '2024-05-10', 'Good');

INSERT INTO Equipment VALUES (2, 'Dell Laptop', 'Peripheral', DATE '2024-01-05', 'Good');

INSERT INTO Equipment VALUES (3, 'Xfinity Router', 'Network', DATE '2024-03-15', 'Needs Repair');

INSERT INTO Equipment VALUES (4, 'MacBook Pro', 'Computer', DATE '2024-06-25', 'Excellent');

INSERT INTO Equipment VALUES (5, 'Logitech Mouse', 'Peripheral', DATE '2024-07-12', 'Good');

INSERT INTO Assignments VALUES (1, 2, 1, DATE '2024-08-17', NULL);

INSERT INTO Assignments VALUES (2, 4, 2, DATE '2024-09-01', NULL);

INSERT INTO Assignments VALUES (3, 5, 4, DATE '2024-10-15', NULL);

INSERT INTO Assignments VALUES (4, 6, 5, DATE '2024-10-20', NULL);

INSERT INTO Maintenance VALUES (1, 2, DATE '2024-09-15', 'Battery Replacement', 120);

INSERT INTO Maintenance VALUES (2, 4, DATE '2024-10-10', 'Firmware Update', 50);

INSERT INTO Maintenance VALUES (3, 5, DATE '2024-10-22', 'Lens Cleansing', 25);

INSERT INTO Vendors VALUES (1, 'Tech Supply', 'techsupply@email.com');

INSERT INTO Vendors VALUES (2, 'Digital Works', 'support@digitalworks.com');

INSERT INTO Vendors VALUES (3, 'Office Gear Solutions', 'officegear@fau.edu');

SELECT * FROM Employees;

SELECT * FROM Equipment;

SELECT * FROM Assignments;

SELECT * FROM Maintenance;

SELECT * FROM Vendors;

SELECT  
    e.First_Name || ' ' || e.Last_Name AS Employee_Name, 
    e.Department, 
    eq.Equipment_Name, 
    eq.Equipment_Type, 
    eq.Condition_Status, 
    a.Issue_Date 
FROM Employees e 
JOIN Assignments a ON e.Employee_ID = a.Employee_ID 
JOIN Equipment eq ON a.Equipment_ID = eq.Equipment_ID;

BEGIN 
   EXECUTE IMMEDIATE 'DROP TABLE Assignments CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Maintenance CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Vendors CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Equipment CASCADE CONSTRAINTS'; 
   EXECUTE IMMEDIATE 'DROP TABLE Employees CASCADE CONSTRAINTS'; 
EXCEPTION 
   WHEN OTHERS THEN 
      NULL; 
END; 
/

CREATE TABLE Employees ( 
    Employee_ID NUMBER PRIMARY KEY, 
    First_Name VARCHAR2(50), 
    Last_Name VARCHAR2(50), 
    Department VARCHAR2(100), 
    Role_Title VARCHAR2(100) 
);

CREATE TABLE Equipment ( 
    Equipment_ID NUMBER PRIMARY KEY, 
    Equipment_Name VARCHAR2(100), 
    Equipment_Type VARCHAR2(50), 
    Purchase_Date DATE, 
    Condition_Status VARCHAR2(50) 
);

CREATE TABLE Assignments ( 
    Assignment_ID NUMBER PRIMARY KEY, 
    Employee_ID NUMBER REFERENCES Employees(Employee_ID), 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Issue_Date DATE, 
    Return_Date DATE 
);

CREATE TABLE Maintenance ( 
    Maintenance_ID NUMBER PRIMARY KEY, 
    Equipment_ID NUMBER REFERENCES Equipment(Equipment_ID), 
    Maintenance_Date DATE, 
    Description VARCHAR2(100), 
    Cost NUMBER 
);

CREATE TABLE Vendors ( 
    Vendor_ID NUMBER PRIMARY KEY, 
    Vendor_Name VARCHAR2(100), 
    Contact_Info VARCHAR2(100) 
);

INSERT INTO Employees VALUES (1, 'Jason', 'Ball', 'OIT Leadership', 'Associate Provost & CIO');

INSERT INTO Employees VALUES (2, 'Christian', 'Block', 'Infrastructure', 'Deputy CIO');

INSERT INTO Employees VALUES (3, 'Ying', 'Liu', 'Academic Tech', 'Assistant Provost');

INSERT INTO Employees VALUES (4, 'Lucy', 'Martucci', 'Fiscal Management', 'Director');

INSERT INTO Employees VALUES (5, 'Zachary', 'Macdonald', 'Client Support', 'Manager');

INSERT INTO Employees VALUES (6, 'Jennifer', 'Turner', 'Enterprise Support', 'Associate Director');

INSERT INTO Equipment VALUES (1, 'HP Monitor', 'Laptop', DATE '2024-05-10', 'Good');

INSERT INTO Equipment VALUES (2, 'Dell Laptop', 'Peripheral', DATE '2024-01-05', 'Good');

INSERT INTO Equipment VALUES (3, 'Xfinity Router', 'Network', DATE '2024-03-15', 'Needs Repair');

INSERT INTO Equipment VALUES (4, 'MacBook Pro', 'Computer', DATE '2024-06-25', 'Excellent');

INSERT INTO Equipment VALUES (5, 'Logitech Mouse', 'Peripheral', DATE '2024-07-12', 'Good');

INSERT INTO Assignments VALUES (1, 2, 1, DATE '2024-08-17', NULL);

INSERT INTO Assignments VALUES (2, 4, 2, DATE '2024-09-01', NULL);

INSERT INTO Assignments VALUES (3, 5, 4, DATE '2024-10-15', NULL);

INSERT INTO Assignments VALUES (4, 6, 5, DATE '2024-10-20', NULL);

INSERT INTO Maintenance VALUES (1, 2, DATE '2024-09-15', 'Battery Replacement', 120);

INSERT INTO Maintenance VALUES (2, 4, DATE '2024-10-10', 'Firmware Update', 50);

INSERT INTO Maintenance VALUES (3, 5, DATE '2024-10-22', 'Lens Cleansing', 25);

INSERT INTO Vendors VALUES (1, 'Tech Supply', 'techsupply@email.com');

INSERT INTO Vendors VALUES (2, 'Digital Works', 'support@digitalworks.com');

INSERT INTO Vendors VALUES (3, 'Office Gear Solutions', 'officegear@fau.edu');

SELECT * FROM Employees;

SELECT * FROM Equipment;

SELECT * FROM Assignments;

SELECT * FROM Maintenance;

SELECT * FROM Vendors;

SELECT  
    e.First_Name || ' ' || e.Last_Name AS Employee_Name, 
    e.Department, 
    eq.Equipment_Name, 
    eq.Equipment_Type, 
    eq.Condition_Status, 
    a.Issue_Date 
FROM Employees e 
JOIN Assignments a ON e.Employee_ID = a.Employee_ID 
JOIN Equipment eq ON a.Equipment_ID = eq.Equipment_ID;

SELECT * FROM Employees;

SELECT * FROM Equipment;

SELECT * FROM Assignments;

SELECT * FROM Maintenance;

SELECT * FROM Vendors;

