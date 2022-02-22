--SQL_DDL
--Первая часть.
--
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

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

--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:

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

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

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

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

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

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:

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
       (44, 5),
       (16, 5),
       (18, 5),
       (22, 5),
       (24, 5),
       (28, 5),
       (33, 5),
       (34, 5),
       (37, 5),
       (41, 5),
       (46, 5),
       (48, 5),
       (42, 5),
       (55, 5),
       (51, 5),
       (53, 5),
       (59, 5),
       (66, 5),
       (61, 5),
       (64, 5),
       (68, 5),
       (70, 5),
       (1, 5),
       (5, 5),
       (8, 5),
       (9, 5),
       (7, 5),
       (12, 5),
       (11, 5),
       (15, 5),
       (14, 5),
       (21, 5),
       (25, 5),
       (29, 5),
       (31, 5),
       (35, 5),
       (39, 5),
       (45, 5),
       (57, 5);

select * from roles_employee;
