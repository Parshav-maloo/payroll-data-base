Declare
c varchar2(20);
depno int;
create or replace function get_dept_manager_name(depno int) return varchar is
name manager.mg_f_name%type;
begin
select mg_f_name into name
from manager
where mg_id = ( select mg_id from department where dep_id = depno); dbms_output.put_line(name);
return NULL;
end; BEGIN depno:= 2;
c :=get_dep_manager_name(depno); dbms_output.put_line('the manager the department is ’|| c); END;
/