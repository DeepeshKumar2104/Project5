CREATE TABLE Users (
    UserId INT PRIMARY KEY,
    Name NVARCHAR(255) NOT NULL,
    Email NVARCHAR(255) NOT NULL UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT NOW(),
    UpdatedAt DATETIME DEFAULT NOW() ON UPDATE NOW()
);

CREATE TABLE Addresses (
    AddressId INT PRIMARY KEY,
    UserId INT NOT NULL,
    Street NVARCHAR(255),
    City NVARCHAR(100),
    State NVARCHAR(100),
    Country NVARCHAR(100),
    ZipCode NVARCHAR(20),
    CreatedAt DATETIME DEFAULT NOW(),
    UpdatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE
);

CREATE TABLE Employments (
    EmploymentId INT PRIMARY KEY,
    UserId INT NOT NULL,
    Company NVARCHAR(255),
    JobTitle NVARCHAR(100),
    StartDate DATETIME,
    EndDate DATETIME NULL,
    CreatedAt DATETIME DEFAULT NOW(),
    UpdatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE
);

CREATE TABLE Passwords (
    PasswordId INT PRIMARY KEY,
    UserId INT NOT NULL,
    PasswordHash NVARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT NOW(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE
);

CREATE TABLE Educations (
    EducationId INT PRIMARY KEY,
    UserId INT NOT NULL,
    Degree NVARCHAR(255),
    Institution NVARCHAR(255),
    GraduationYear INT,
    CreatedAt DATETIME DEFAULT NOW(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE
);

CREATE TABLE UserProfiles (
    ProfileId INT PRIMARY KEY,
    UserId INT NOT NULL,
    AddressId INT,
    ActivePasswordId INT,
    CurrentJobId INT,
    HighestEducationId INT,
    CreatedAt DATETIME DEFAULT NOW(),
    UpdatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    FOREIGN KEY (UserId) REFERENCES Users(UserId) ON DELETE CASCADE,
    FOREIGN KEY (AddressId) REFERENCES Addresses(AddressId) ON DELETE SET NULL,
    FOREIGN KEY (ActivePasswordId) REFERENCES Passwords(PasswordId) ON DELETE SET NULL,
    FOREIGN KEY (CurrentJobId) REFERENCES Employments(EmploymentId) ON DELETE SET NULL,
    FOREIGN KEY (HighestEducationId) REFERENCES Educations(EducationId) ON DELETE SET NULL
);
select * from UserProfiles;
