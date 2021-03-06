--SQL_DDL
--?????? ?????.
--
--??????? ??????? employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--????????? ??????? employee 70 ????????.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (employee_name)
values ('ALex'),
       ('ALexey'),
       ('Andrew'),
       ('Andrey'),
       ('Andrei'),
       ('Anton'),
       ('Atos'),
       ('Aramis'),
       ('Anna'),
       ('Anastasia'),
       ('Anastaisha'),
       ('Anya'),
       ('Artiom'),
       ('Artem'),
       ('Aleksandr'),
       ('Alexandr'),
       ('Aleksander'),
       ('Boris'),
       ('Bory'),
       ('Borya'),
       ('Bart'),
       ('Cent'),
       ('Diyak'),
       ('Dron'),
       ('Dima'),
       ('Dmitriy'),
       ('Dimon'),
       ('Dimas'),
       ('Fekla'),
       ('Feodoniy'),
       ('Ftor'),
       ('Georgiy'),
       ('Gora'),
       ('Galina'),
       ('Galy'),
       ('Ilona'),
       ('Igor'),
       ('Inna'),
       ('Jora'),
       ('Jenya'),
       ('Jendos'),
       ('Kolya'),
       ('Kolyan'),
       ('Liza'),
       ('Lyonya'),
       ('Lev'),
       ('Maksim'),
       ('Maks'),
       ('Masha'),
       ('Mariya'),
       ('Mashka'),
       ('Nastya'),
       ('Nastyuha'),
       ('Nikolay'),
       ('Nikon'),
       ('Olga'),
       ('Olya'),
       ('Olka'),
       ('Ortyom'),
       ('Pasha'),
       ('Pashka'),
       ('Roma'),
       ('Roman'),
       ('Rita'),
       ('Ravioliya'),
       ('Sasha'),
       ('Sanya'),
       ('Tanya'),
       ('Vadim'),
       ('Volodya');

select * from employees

--??????? ??????? salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--????????? ??????? salary 15 ????????:

create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);

select * from salary;

--??????? ??????? employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--????????? ??????? employee_salary 40 ????????:
--- ? 10 ????? ?? 40 ???????? ?????????????? employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
)

insert into employee_salary(id, employee_id, salary_id)
values (default, 5, 16),
       (default, 66, 11),
       (default, 49, 7),
       (default, 23, 1),
       (default, 70, 5),
       (default, 69, 11),
       (default, 11, 2),
       (default, 62, 5),
       (default, 15, 8),
       (default, 34, 6),
       (default, 31, 14),
       (default, 29, 15),
       (default, 27, 2),
       (default, 18, 1),
       (default, 55, 4),
       (default, 68, 6),
       (default, 33, 7),
       (default, 61, 8),
       (default, 25, 14),
       (default, 24, 11),
       (default, 1, 5),
       (default, 44, 9),
       (default, 36, 1),
       (default, 22, 4),
       (default, 12, 13),
       (default, 35, 12),
       (default, 7, 10),
       (default, 47, 7),
       (default, 57, 11),
       (default, 4, 15),
       (default, 141, 2),
       (default, 111, 6),
       (default, 99, 8),
       (default, 71, 12),
       (default, 77, 10),
       (default, 85, 14),
       (default, 94, 8),
       (default, 78, 9),
       (default, 105, 11),
       (default, 76, 2);

select * from employee_salary;

--??????? ??????? roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--???????? ??? ?????? role_name ? int ?? varchar(30)
--????????? ??????? roles 20 ????????:

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
       ('Middle Python developer'),
       ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

select * from roles;

--??????? ??????? roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (??????? ???? ??? ??????? employees, ???? id)
--- role_id. Int, not null (??????? ???? ??? ??????? roles, ???? id)
--????????? ??????? roles_employee 40 ????????:

create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id) 
		references employees (id),
	role_id int not null,
	foreign key (role_id)
		references roles (id)
);

insert into roles_employee (employee_id, role_id)
values (69, 2),
       (44, 3),
       (16, 14),
       (18, 15),
       (22, 6),
       (24, 8),
       (28, 7),
       (33, 12),
       (34, 10),
       (37, 11),
       (41, 2),
       (46, 4),
       (48, 3),
       (42, 5),
       (55, 7),
       (51, 6),
       (53, 8),
       (59, 9),
       (66, 20),
       (61, 19),
       (64, 16),
       (68, 17),
       (70, 18),
       (1, 11),
       (5, 14),
       (8, 15),
       (9, 8),
       (7, 6),
       (12, 3),
       (11, 4),
       (15, 13),
       (14, 14),
       (21, 20),
       (25, 11),
       (29, 5),
       (31, 2),
       (35, 6),
       (39, 8),
       (45, 20),
       (57, 16);

select * from roles_employee;
