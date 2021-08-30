DECLARE
CURSOR c1 is SELECT e_id, age FROM employee ORDER BY age DESC; my_e_id INT;
my_age INT;
BEGIN
OPEN c1;
FOR i IN 1..5 LOOP
FETCH c1 INTO my_e_id, my_age;
EXIT WHEN c1%NOTFOUND;
INSERT INTO temp VALUES (my_e_id, my_age);
COMMIT;
END LOOP;
CLOSE c1;
END;
