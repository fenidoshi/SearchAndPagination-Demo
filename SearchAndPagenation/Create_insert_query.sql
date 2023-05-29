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
    ('Prakash', 'Smith', 'johnsmith@dummy.com', '123 Main Street, Cityville', '1990-01-15'),
    ('Gupta', 'Aman', 'guptaaman@dummy.com', '456 Elm Street, Townsville', '1985-05-10'),
    ('Deepika', 'Johnson', 'deepikajohnson@dummy.com', '789 Oak Avenue, Villageland', '1992-09-22'),
    ('Emily', 'Williams', 'emilywilliams@dummy.com', '321 Pine Road, Countryside', '1998-03-27'),
    ('David', 'Johnson', 'davidjohnson@dummy.com', '987 Elm Street, Townsville', '1987-11-02'),
    ('Sarah', 'Davis', 'sarahdavis@dummy.com', '654 Oak Avenue, Villageland', '1995-06-18'),
    ('Jennifer', 'Anderson', 'jenniferanderson@dummy.com', '321 Pine Road, Countryside', '1982-09-14'),
    ('Michael', 'Thompson', 'michaelthompson@dummy.com', '741 Maple Lane, Cityville', '1991-03-07'),
    ('Amanda', 'Rodriguez', 'amandarodriguez@dummy.com', '852 Cedar Avenue, Townsville', '1989-08-23'),
    ('Matthew', 'Martinez', 'matthewmartinez@dummy.com', '963 Birch Road, Villageland', '1993-12-30'),
    ('Jessica', 'Wilson', 'jessicawilson@dummy.com', '741 Pine Road, Countryside', '1984-07-12'),
    ('Christopher', 'Thompson', 'christopherthompson@dummy.com', '852 Elm Street, Cityville', '1997-02-28'),
    ('Samantha', 'Davis', 'samanthadavis@dummy.com', '963 Oak Avenue, Townsville', '1986-09-05'),
    ('Andrew', 'Rodriguez', 'andrewrodriguez@dummy.com', '741 Maple Lane, Villageland', '1994-04-20'),
    ('Stephanie', 'Hernandez', 'stephaniehernandez@dummy.com', '852 Pine Road, Countryside', '1990-11-11'),
    ('Daniel', 'Lee', 'daniellee@dummy.com', '963 Cedar Avenue, Cityville', '1988-06-26'),
    ('Kimberly', 'Wilson', 'kimberlywilson@dummy.com', '741 Birch Road, Townsville', '1996-01-17'),
    ('Ryan', 'Hernandez', 'ryanhernandez@dummy.com', '852 Oak Avenue, Villageland', '1983-04-09'),
    ('Dom', 'Lee', 'Domlee@dummy.com', '963 Pine Road, Countryside', '1999-07-31'),
	('Feni', 'Shah', 'doshifeni@gmail.com', 'Ahmedabad,India', '2000-06-30');



