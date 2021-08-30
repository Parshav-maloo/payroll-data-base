create or replace trigger trg_employees_time_check before update or insert or delete
on employee for each row
begin
if to_char(sysdate,'hh24') < 6 or to_char(sysdate,'hh24') > 10
then raise_application_error(-20111,'Sorry! No change can be made before 6
AM and after 10 PM'); end if;
end;