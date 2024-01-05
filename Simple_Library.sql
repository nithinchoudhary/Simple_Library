-- Create Authors table
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(255) NOT NULL
);

-- Create Books table
CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    Status VARCHAR(50) DEFAULT 'Available',
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

-- Create Borrowers table
CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY,
    BorrowerName VARCHAR(255) NOT NULL
);

-- Insert sample data into Authors table
INSERT INTO Authors (AuthorID, AuthorName) VALUES
    (101, 'JK ROWLING'),
    (102, 'Stephenie Meyer'),
    (103, 'APJ ABDUL KALAM');

-- Insert sample data into Books table
INSERT INTO Books (BookID, Title, AuthorID, Status) VALUES
    (1, 'Harry Potter', 101, 'Available'),
    (2, 'Twilight', 102, 'Available'),
    (3, 'Wings of fire', 103, 'Borrowed');

-- Insert sample data into Borrowers table
INSERT INTO Borrowers (BorrowerID, BorrowerName) VALUES
    (111, 'Sharukh'),
    (222, 'Virat');

-- Sample query: List all books in the library
SELECT * FROM Books;

-- Sample query: List all authors in the library
SELECT * FROM Authors;

-- Sample query: List all borrowers in the library
SELECT * FROM Borrowers;

-- Sample query: Find books by a specific author
SELECT * FROM Books WHERE AuthorID = 101;

-- Sample query: Display books currently borrowed
SELECT * FROM Books WHERE Status = 'Borrowed';