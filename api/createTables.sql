-- Create Taluk table
CREATE TABLE IF NOT EXISTS Taluk (
    TalukID INT AUTO_INCREMENT PRIMARY KEY,
    TalukName VARCHAR(100) NOT NULL UNIQUE
);

-- Create Food table
CREATE TABLE IF NOT EXISTS Food (
    FoodID INT AUTO_INCREMENT PRIMARY KEY,
    FoodName VARCHAR(100) NOT NULL,
    FoodDescription TEXT,
    PriceRange VARCHAR(50),
    Image VARCHAR(255),
    TalukID INT NOT NULL,
    FOREIGN KEY (TalukID) REFERENCES Taluk(TalukID) ON DELETE CASCADE
);

-- Create Accommodation table
CREATE TABLE IF NOT EXISTS Accommodation (
    AccommodationID INT AUTO_INCREMENT PRIMARY KEY,
    AccommodationName VARCHAR(100) NOT NULL,
    AccommodationDescription TEXT,
    PriceRange VARCHAR(50),
    Rating DECIMAL(2,1),
    Image VARCHAR(255),
    TalukID INT NOT NULL,
    FOREIGN KEY (TalukID) REFERENCES Taluk(TalukID) ON DELETE CASCADE
);

-- Create LocalExperience table
CREATE TABLE IF NOT EXISTS LocalExperience (
    ExperienceID INT AUTO_INCREMENT PRIMARY KEY,
    ExperienceName VARCHAR(100) NOT NULL,
    ExperienceDescription TEXT,
    Duration VARCHAR(50),
    Price DECIMAL(10,2),
    Image VARCHAR(255),
    TalukID INT NOT NULL,
    FOREIGN KEY (TalukID) REFERENCES Taluk(TalukID) ON DELETE CASCADE
);

-- Create Transport table
CREATE TABLE IF NOT EXISTS Transport (
    TransportID INT AUTO_INCREMENT PRIMARY KEY,
    TransportType VARCHAR(50) NOT NULL,
    TransportDescription TEXT,
    Cost DECIMAL(10,2),
    Schedule VARCHAR(100),
    TalukID INT NOT NULL,
    FOREIGN KEY (TalukID) REFERENCES Taluk(TalukID) ON DELETE CASCADE
); 