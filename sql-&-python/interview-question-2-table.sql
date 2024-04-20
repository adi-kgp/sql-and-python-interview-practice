-- Create the "employee" table
CREATE TABLE employee2 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(5),
    managerId INT
);

-- Insert sample data into the "employee" table
INSERT INTO employee2 (id, name, department, managerId) 
VALUES
(101, 'John', 'A', null),
(102, 'Dan', 'A', 101),
(103, 'James', 'A', 101),
(104, 'Amy', 'A', 101),
(105, 'Anne', 'A', 101),
(106, 'Ron', 'B', 101);