-- always execute the command <set serveroutput on> before running 
-- create table random_num (rand_no number(20));
DECLARE
    random_number NUMBER(20);
BEGIN
    INSERT INTO RANDOM_NUM VALUES (TRUNC(DBMS_RANDOM.VALUE(0,100000000)));
    COMMIT;
END;
/