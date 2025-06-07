
CREATE DATABASE PS44477_POLYCAFE;
GO

USE PS44477_POLYCAFE;
GO

CREATE TABLE Categories (
    Id NVARCHAR(20) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    PRIMARY KEY(Id)
);
GO

CREATE TABLE Drinks (
    Id NVARCHAR(20) NOT NULL,
    Name NVARCHAR(50) NOT NULL,
    UnitPrice FLOAT NOT NULL,
    Discount FLOAT NOT NULL,
    Image NVARCHAR(50) NOT NULL,
    Available BIT NOT NULL,
    CategoryId NVARCHAR(20) NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(CategoryId) REFERENCES Categories(Id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
GO

CREATE TABLE Cards (
    Id INT NOT NULL,
    Status INT NOT NULL,
    PRIMARY KEY(Id)
);
GO

CREATE TABLE Users (
    Username NVARCHAR(20) NOT NULL,
    Password NVARCHAR(50) NOT NULL,
    Enabled BIT NOT NULL,
    Fullname NVARCHAR(50) NOT NULL,
    Photo NVARCHAR(50) NOT NULL,
    Manager BIT NOT NULL,
    PRIMARY KEY(Username)
);
GO

CREATE TABLE Bills (
    Id BIGINT NOT NULL IDENTITY(10000, 1),
    Username NVARCHAR(20) NOT NULL,
    CardId INT NOT NULL,
    Checkin DATETIME NOT NULL,
    Checkout DATETIME NULL,
    Status INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(Username) REFERENCES Users(Username)
        ON UPDATE CASCADE,
    FOREIGN KEY(CardId) REFERENCES Cards(Id)
        ON UPDATE CASCADE
);
GO

CREATE TABLE BillDetails (
    Id BIGINT NOT NULL IDENTITY(100000, 1),
    BillId BIGINT NOT NULL,
    DrinkId NVARCHAR(20) NOT NULL,
    UnitPrice FLOAT NOT NULL,
    Discount FLOAT NOT NULL,
    Quantity INT NOT NULL,
    PRIMARY KEY(Id),
    FOREIGN KEY(BillId) REFERENCES Bills(Id)
        ON DELETE CASCADE,
    FOREIGN KEY(DrinkId) REFERENCES Drinks(Id)
        ON UPDATE CASCADE
);
GO

-- Thêm dữ liệu cho Categories
INSERT INTO Categories (Id, Name) VALUES
('C001', N'Cà phê'),
('C002', N'Trà sữa'),
('C003', N'Nước ép'),
('C004', N'Sinh tố'),
('C005', N'Đá xay');

-- Thêm dữ liệu cho Drinks
INSERT INTO Drinks (Id, Name, UnitPrice, Discount, Image, Available, CategoryId) VALUES
('D001', N'Cà phê sữa', 25000, 0.1, 'caphe_sua.jpg', 1, 'C001'),
('D002', N'Cà phê đen', 20000, 0.05, 'caphe_den.jpg', 1, 'C001'),
('D003', N'Trà sữa trân châu', 30000, 0.15, 'trasua_tc.jpg', 1, 'C002'),
('D004', N'Nước ép cam', 28000, 0.0, 'nuocep_cam.jpg', 1, 'C003'),
('D005', N'Sinh tố bơ', 32000, 0.2, 'sinhto_bo.jpg', 1, 'C004');

-- Thêm dữ liệu cho Cards
INSERT INTO Cards (Id, Status) VALUES
(1, 0),
(2, 0),
(3, 1),
(4, 1),
(5, 0);

-- Thêm dữ liệu cho Users
INSERT INTO Users (Username, Password, Enabled, Fullname, Photo, Manager) VALUES
('admin', 'admin123', 1, N'Nguyễn Văn A', 'admin.jpg', 1),
('user1', 'pass1', 1, N'Trần Thị B', 'user1.jpg', 0),
('user2', 'pass2', 1, N'Lê Văn C', 'user2.jpg', 0),
('user3', 'pass3', 0, N'Phạm Thị D', 'user3.jpg', 0),
('user4', 'pass4', 1, N'Hồ Văn E', 'user4.jpg', 1);

-- Thêm dữ liệu cho Bills
INSERT INTO Bills (Username, CardId, Checkin, Checkout, Status) VALUES
('admin', 1, GETDATE(), NULL, 0),
('user1', 2, DATEADD(HOUR, -2, GETDATE()), GETDATE(), 1),
('user2', 3, DATEADD(HOUR, -1, GETDATE()), NULL, 0),
('user3', 4, DATEADD(DAY, -1, GETDATE()), DATEADD(HOUR, -20, GETDATE()), 1),
('user4', 5, DATEADD(HOUR, -3, GETDATE()), GETDATE(), 1);

-- Thêm dữ liệu cho BillDetails (sử dụng BillId và DrinkId đã có)
INSERT INTO BillDetails (BillId, DrinkId, UnitPrice, Discount, Quantity) VALUES
(10000, 'D001', 25000, 0.1, 2),
(10001, 'D003', 30000, 0.15, 1),
(10001, 'D004', 28000, 0.0, 1),
(10002, 'D002', 20000, 0.05, 3),
(10003, 'D005', 32000, 0.2, 2);
