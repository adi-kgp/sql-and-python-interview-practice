-- Create the "employee" table
CREATE TABLE employee1 (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT
);

-- Insert sample data into the "employee" table
INSERT INTO employee1 (emp_name, salary, department_id) 
VALUES
('John Smith', 55000.00, 1),
('Jane Johnson', 60000.00, 1),
('Bob Brown', 52000.00, 2),
('Alice Davis', 62000.00, 2),
('John White', 35000.00, 2),
('Tom Wilson', 59000.00, 3),
('Sarah White', 58000.00, 3),
('Silly Kerin', 40000.00, 3);