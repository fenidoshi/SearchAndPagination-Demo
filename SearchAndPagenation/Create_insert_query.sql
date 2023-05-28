CREATE TABLE Users (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    EmailID VARCHAR(100),
    Address VARCHAR(200),
    DateOfBirth DATE
);

INSERT INTO Users (FirstName, LastName, EmailID, Address, DateOfBirth)
VALUES
    ('John', 'Smith', 'johnsmith@example.com', '123 Main Street, Cityville', '1990-01-15'),
    ('Jane', 'Doe', 'janedoe@example.com', '456 Elm Street, Townsville', '1985-05-10'),
    ('Michael', 'Johnson', 'michaeljohnson@example.com', '789 Oak Avenue, Villageland', '1992-09-22'),
    ('Emily', 'Williams', 'emilywilliams@example.com', '321 Pine Road, Countryside', '1998-03-27'),
    ('David', 'Johnson', 'davidjohnson@example.com', '987 Elm Street, Townsville', '1987-11-02'),
    ('Sarah', 'Davis', 'sarahdavis@example.com', '654 Oak Avenue, Villageland', '1995-06-18'),
    ('Jennifer', 'Anderson', 'jenniferanderson@example.com', '321 Pine Road, Countryside', '1982-09-14'),
    ('Michael', 'Thompson', 'michaelthompson@example.com', '741 Maple Lane, Cityville', '1991-03-07'),
    ('Amanda', 'Rodriguez', 'amandarodriguez@example.com', '852 Cedar Avenue, Townsville', '1989-08-23'),
    ('Matthew', 'Martinez', 'matthewmartinez@example.com', '963 Birch Road, Villageland', '1993-12-30'),
    ('Jessica', 'Wilson', 'jessicawilson@example.com', '741 Pine Road, Countryside', '1984-07-12'),
    ('Christopher', 'Thompson', 'christopherthompson@example.com', '852 Elm Street, Cityville', '1997-02-28'),
    ('Samantha', 'Davis', 'samanthadavis@example.com', '963 Oak Avenue, Townsville', '1986-09-05'),
    ('Andrew', 'Rodriguez', 'andrewrodriguez@example.com', '741 Maple Lane, Villageland', '1994-04-20'),
    ('Stephanie', 'Hernandez', 'stephaniehernandez@example.com', '852 Pine Road, Countryside', '1990-11-11'),
    ('Daniel', 'Lee', 'daniellee@example.com', '963 Cedar Avenue, Cityville', '1988-06-26'),
    ('Kimberly', 'Wilson', 'kimberlywilson@example.com', '741 Birch Road, Townsville', '1996-01-17'),
    ('Ryan', 'Hernandez', 'ryanhernandez@example.com', '852 Oak Avenue, Villageland', '1983-04-09'),
    ('Lauren', 'Lee', 'laurenlee@example.com', '963 Pine Road, Countryside', '1999-07-31'),
	('Feni', 'Shah', 'doshifeni@gmail.com', 'Ahmedabad,India', '2000-06-30');



