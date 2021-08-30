Select employee.e_id,employee.emp_f_name,employee.emp_l_name,employee_- phone_no.phone_no
from employee INNER JOIN employee_phone_no ON employee.e_id=em- ployee_phone_no.emp_id;
Select department.dep_name,department.c_id,manager.mg_f_name,manag- er.mg_l_name
from department INNER JOIN manager ON department.mg_id=manag- er.mg_id;
SELECT employee.emp_f_name, employee.emp_l_name, payroll.gross_pay,payroll.net_pay,payroll.ta
FROM Employee
FULL JOIN payroll
ON employee.trans_id = payroll.trans_id;
Select employee.e_id,employee.emp_f_name,employee.emp_l_name,employee.- sex,employee.city,employee_phone_no.phone_no
from employee LEFT JOIN employee_phone_no ON employee.e_id=employ- ee_phone_no.emp_id;
Select department.dep_name,department.c_id,manager.mg_f_name,manag- er.mg_l_name
from department RIGHT JOIN manager ON department.mg_id=manag- er.mg_id;
Nested queries
SELECT employee.emp_f_name, employee.emp_l_name FROM employee
WHERE employee.trans_id IN (SELECT payroll.trans_id
FROM payroll
WHERE payroll.deduction > 5000);
SELECT employee.emp_f_name, employee.emp_l_name FROM employee
WHERE employee.trans_id IN (SELECT payroll.trans_id
FROM payroll
WHERE payroll.gross_pay > 140000);
SELECT employee.emp_f_name, employee.emp_l_name FROM employee
WHERE employee.trans_id IN (SELECT payroll.trans_id
FROM payroll
WHERE payroll.gross_pay < 110000);