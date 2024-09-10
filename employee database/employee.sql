
create table department(
    department_id INTEGER PRIMARY KEY autoincrement ,
    department_name varchar(50) NOT NULL
);
create table jobs(
    job_id INTEGER  primary key autoincrement ,
    job_name varchar(50) NOT NULL,
    min_salary decimal(10 , 2),
    max_salary decimal(10, 2 )
);

create table employee(

    --employee id primary key
    employe_id INTEGER primary key autoincrement ,

    --employee credentials
    employee_name varchar(20) Not NULL,
    emplyee_middle_name varchar(20) ,
    employee_surname varchar(20) not null,

    salary DECIMAL(10,2),
    hire_date DATE NOT NULL ,

    --foreign keys
    job_id INTEGER,
    department_id INTEGER,
    --employee job
    foreign KEY (job_id) REFERENCES jobs,
    foreign key (department_id) references department
);


INSERT INTO department (department_name)
VALUES
('Human Resources'),
('IT'),
('Finance'),
('Services');

INSERT INTO jobs (job_name, min_salary, max_salary)
VALUES
('Developer', 40000 , 50000);

insert  into employee (employee_name, emplyee_middle_name, employee_surname, salary, hire_date, job_id, department_id)
VALUES
('Arehone ' , '' , 'matodzi' , 30000 , 2024/11/03 , 1 , 1);


select  * from employee;

select * from employee where department_id = 1;

SELECT e.employee_name, e.employee_surname, d.department_name, j.job_name, e.salary
FROM employee e
JOIN department d ON e.department_id = d.department_id
JOIN jobs j ON e.job_id = j.job_id;
