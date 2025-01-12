-- Hotel Management Database Schema

-- Type Table
CREATE TABLE Type (
    Type_Id INT PRIMARY KEY,
    Type_Name VARCHAR(100) NOT NULL
);

-- Hotel Table
CREATE TABLE Hotel (
    Hotel_Id INT PRIMARY KEY,
    Hotel_name VARCHAR(200) NOT NULL,
    Type_Id INT,
    FOREIGN KEY (Type_Id) REFERENCES Type(Type_Id)
);

-- Category Table
CREATE TABLE Category (
    Category_Id INT PRIMARY KEY,
    Category_Name VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Beds_numbers INT NOT NULL
);

-- Room Table
CREATE TABLE Room (
    Room_Id INT PRIMARY KEY,
    Floor INT NOT NULL,
    Hotel_Id INT,
    Category_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Category_Id) REFERENCES Category(Category_Id)
);

-- Employee Table
CREATE TABLE Employee (
    Employee_Id INT PRIMARY KEY,
    Employee_Name VARCHAR(200) NOT NULL,
    Employee_Speciality VARCHAR(100),
    Hotel_Id INT,
    Leader_Id INT,
    FOREIGN KEY (Hotel_Id) REFERENCES Hotel(Hotel_Id),
    FOREIGN KEY (Leader_Id) REFERENCES Employee(Employee_Id)
);

-- Add indexes for better query performance
CREATE INDEX idx_hotel_type ON Hotel(Type_Id);
CREATE INDEX idx_room_hotel ON Room(Hotel_Id);
CREATE INDEX idx_room_category ON Room(Category_Id);
CREATE INDEX idx_employee_hotel ON Employee(Hotel_Id);
CREATE INDEX idx_employee_leader ON Employee(Leader_Id); 