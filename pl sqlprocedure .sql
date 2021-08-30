create or replace procedure increase_salary(increament int) is begin
update payroll
set gross_pay = gross_pay + increament
where trans_id=( select trans_id from employee where age >30); end;
