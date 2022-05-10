-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
SELECT employee_name, monthly_salary
FROM employees join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary.id = employee_salary.salary_id;
-- 2. ������� ���� ���������� � ������� �� ������ 2000.
SELECT employee_name, monthly_salary
FROM employees join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary.id = employee_salary.salary_id
where salary.monthly_salary < 2000;
-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
SELECT employee_name, monthly_salary
FROM employees right join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary.id = employee_salary.salary_id
where employee_name is null;
-- 4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
SELECT employee_name, monthly_salary
FROM employees right join employee_salary on employee_salary.employee_id = employees.id 
join salary on salary.id = employee_salary.salary_id
where employee_name is null and monthly_salary < 2000;
-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, monthly_salary
from employees left join employee_salary on employees.id = employee_salary.employee_id 
full join salary on salary.id  = employee_salary.salary_id
where salary.monthly_salary is null;
-- 6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name
from employees join roles_employee on roles_employee.employee_id = employees.id
join roles on roles.id = roles_employee.role_id;
-- 7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer%';
-- 8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Python developer%';
-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%QA%';
-- 10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA%';
-- 11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation QA%';
-- 12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Junior%';
-- 13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Middle%';
-- 14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary
from employees join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles.id = roles_employee.role_id 
where role_name like '%Senior%';
-- 15. ������� �������� Java �������������
select monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Java developer%';
-- 16. ������� �������� Python �������������
select monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Python developer%';
-- 17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python developer%';
-- 18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle JavaScript developer%';
-- 19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior Java developer%';
-- 20. ������� �������� Junior QA ���������
select employee_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%QA%';
-- 21. ������� ������� �������� ���� Junior ������������
select employee_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior%';
-- 22. ������� ����� ������� JS �������������
select sum(monthly_salary) as sum_JS_dev
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%JavaScript developer%';
-- 23. ������� ����������� �� QA ���������
select min(monthly_salary) as min_salary_QA
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%';
-- 24. ������� ������������ �� QA ���������
select max(monthly_salary) as max_salary_QA
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%';
-- 25. ������� ���������� QA ���������
select count(role_name)
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA%';
-- 26. ������� ���������� Middle ������������.
select count(role_name)
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle%';
-- 27. ������� ���������� �������������
select count(role_name)
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%';
-- 28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary)
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer%';
-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
order by 3;
-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary between 1700 and 2300
order by 3;
-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary < 2300
order by 3;
-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary
from employees join roles_employee on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on salary.id = employee_salary.salary_id
where monthly_salary in (1100,1500,2000)
order by 3;