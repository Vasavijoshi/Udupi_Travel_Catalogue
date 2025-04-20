-- Create database if it doesn't exist
CREATE DATABASE IF NOT EXISTS udupi;
USE udupi;

-- Create Taluk table first (since Destinations depends on it)
CREATE TABLE IF NOT EXISTS Taluk (
    TalukID INT AUTO_INCREMENT PRIMARY KEY,
    TalukName VARCHAR(100) NOT NULL,
    Description TEXT,
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Destinations table
CREATE TABLE IF NOT EXISTS Destinations (
    DestinationID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL,
    Category VARCHAR(50) NOT NULL,
    Description LONGTEXT,
    EntryFee DECIMAL(10,2),
    OpeningTime TIME,
    ClosingTime TIME,
    BestSeason VARCHAR(50),
    TalukID INT NOT NULL,
    Image VARCHAR(255),
    FOREIGN KEY (TalukID) REFERENCES Taluk(TalukID) ON DELETE CASCADE
);

-- Create Food table
CREATE TABLE IF NOT EXISTS Food (
    FoodID INT AUTO_INCREMENT PRIMARY KEY,
    FoodName VARCHAR(100) NOT NULL,
    FoodDescription TEXT,
    PriceRange VARCHAR(50),
    DestinationID INT NOT NULL,
    Image VARCHAR(255),
    FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID) ON DELETE CASCADE
);

-- Create Accommodation table
CREATE TABLE IF NOT EXISTS Accommodation (
    AccommodationID INT AUTO_INCREMENT PRIMARY KEY,
    AccommodationName VARCHAR(100) NOT NULL,
    AccommodationDescription TEXT,
    PriceRange VARCHAR(50),
    Rating DECIMAL(2,1),
    DestinationID INT NOT NULL,
    Image VARCHAR(255),
    FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID) ON DELETE CASCADE
);

-- Create LocalExperience table
CREATE TABLE IF NOT EXISTS LocalExperience (
    ExperienceID INT AUTO_INCREMENT PRIMARY KEY,
    ExperienceName VARCHAR(100) NOT NULL,
    Description TEXT,
    PriceRange VARCHAR(50),
    DestinationID INT NOT NULL,
    Image VARCHAR(255),
    FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID) ON DELETE CASCADE
);

-- Create Transport table
CREATE TABLE IF NOT EXISTS Transport (
    TransportID INT AUTO_INCREMENT PRIMARY KEY,
    TransportName VARCHAR(100) NOT NULL,
    Description TEXT,
    PriceRange VARCHAR(50),
    DestinationID INT NOT NULL,
    Image VARCHAR(255),
    FOREIGN KEY (DestinationID) REFERENCES Destinations(DestinationID) ON DELETE CASCADE
);

-- Insert some initial Taluk data
INSERT INTO Taluk (TalukName, Description) VALUES
('Udupi', 'The main taluk of Udupi district'),
('Karkala', 'Historical taluk known for monuments'),
('Kundapura', 'Coastal taluk with beautiful beaches'),
('Brahmavara', 'Rich in cultural heritage'),
('Kaup', 'Famous for its lighthouse and beaches'),
('Hebri', 'Known for its natural beauty'),
('Byndoor', 'Scenic coastal taluk'); 